module parking_management_system (
    input wire clk,
    input wire reset,
    input wire car_entered,
    input wire car_exited,
    input wire is_uni_car_entered,
    input wire is_uni_car_exited,
    output reg [9:0] uni_parked_car, // Number of university cars currently parked
    output reg [9:0] parked_car, // Number of non-university cars currently parked
    output reg [9:0] uni_vacated_space, // Number of vacated spaces reserved for university cars
    output reg [9:0] vacated_space, // Number of vacated spaces for non-university cars
    output reg uni_is_vacated_space, // indicates if there is a vacated space for university cars
    output reg is_vacated_space //  Indicates if there is a vacated space for non-university cars
);

    parameter MAX_PARKING_SPACE = 700; // Total maximum parking spaces available
    parameter MAX_UNI_SPACE = 500; // Maximum parking spaces reserved for university cars
    parameter CLK_FREQ = 100_000_000; // Frequency of the clock signal (in Hz)
    parameter NON_UNI_BASE_SPACE = 200; // Initial base space reserved for non-university cars

    // these regs are used to adjust the non_uni_space
    reg [31:0] elapsed_time_cycles;
    reg [9:0] non_uni_space;
    reg [3:0] time_threshold;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            elapsed_time_cycles <= 0;
            time_threshold <= 0;
            uni_parked_car <= 0;
            parked_car <= 0;
            uni_vacated_space <= MAX_UNI_SPACE;
            vacated_space <= NON_UNI_BASE_SPACE;
            non_uni_space <= NON_UNI_BASE_SPACE;
            uni_is_vacated_space <= 1;
            is_vacated_space <= 1;
        end else begin
            elapsed_time_cycles <= elapsed_time_cycles + 1;

            // Update time threshold based on elapsed time
            if (elapsed_time_cycles >= CLK_FREQ * 300 * 60) begin
                time_threshold <= 4;
            end else if (elapsed_time_cycles >= CLK_FREQ * 240 * 60) begin
                time_threshold <= 3;
            end else if (elapsed_time_cycles >= CLK_FREQ * 180 * 60) begin
                time_threshold <= 2;
            end else if (elapsed_time_cycles >= CLK_FREQ * 120 * 60) begin
                time_threshold <= 1;
            end else begin
                time_threshold <= 0;
            end

            // Adjust non-uni space allocation based on time threshold
            if (time_threshold == 0) begin
                non_uni_space <= NON_UNI_BASE_SPACE;
            end else if (time_threshold == 1) begin
                non_uni_space <= 250;
            end else if (time_threshold == 2) begin
                non_uni_space <= 300;
            end else if (time_threshold == 3) begin
                non_uni_space <= 350;
            end else if (time_threshold == 4) begin
                non_uni_space <= MAX_UNI_SPACE;
            end

            // Handle university car entered
            if (car_entered && is_uni_car_entered) begin
                if (uni_parked_car < MAX_UNI_SPACE && uni_parked_car + parked_car < MAX_PARKING_SPACE) begin
                    uni_parked_car <= uni_parked_car + 1;
                    uni_vacated_space <= uni_vacated_space - 1;
                end
                // Directly implement the logic of update_space_availability
                if (uni_parked_car < MAX_UNI_SPACE && uni_parked_car + parked_car < MAX_PARKING_SPACE) begin
                    uni_is_vacated_space <= 1;
                end else begin
                    uni_is_vacated_space <= 0;
                end
                if (parked_car < non_uni_space && uni_parked_car + parked_car < MAX_PARKING_SPACE) begin
                    is_vacated_space <= 1;
                end else begin
                    is_vacated_space <= 0;
                end
            // Handle university car exited
            end else if (car_exited && is_uni_car_exited) begin
                if (uni_parked_car > 0) begin
                    uni_parked_car <= uni_parked_car - 1;
                    uni_vacated_space <= uni_vacated_space + 1;
                    uni_is_vacated_space <= 1;
                end
            // Handle non-university car entered
            end else if (car_entered && !is_uni_car_entered) begin
                if (parked_car + uni_parked_car < MAX_PARKING_SPACE && parked_car < non_uni_space) begin
                    parked_car <= parked_car + 1;
                    vacated_space <= vacated_space - 1;
                end
                // Directly implement the logic of update_space_availability
                if (uni_parked_car < MAX_UNI_SPACE && uni_parked_car + parked_car < MAX_PARKING_SPACE) begin
                    uni_is_vacated_space <= 1;
                end else begin
                    uni_is_vacated_space <= 0;
                end
                if (parked_car < non_uni_space && uni_parked_car + parked_car < MAX_PARKING_SPACE) begin
                    is_vacated_space <= 1;
                end else begin
                    is_vacated_space <= 0;
                end
            // Handle non-university car exited
            end else if (car_exited && !is_uni_car_exited) begin
                if (parked_car > 0) begin
                    parked_car <= parked_car - 1;
                    vacated_space <= vacated_space + 1;
                    is_vacated_space <= 1;
                end
            end
        end
    end
endmodule





