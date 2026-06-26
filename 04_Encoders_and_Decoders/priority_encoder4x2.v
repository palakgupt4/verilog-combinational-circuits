module priority_encoder4x2(
    input i0,
    input i1,
    input i2,
    input i3,
    output reg y1,
    output reg y0
);

always @(*) begin

    if(i3) begin
        y1 = 1;
        y0 = 1;
    end

    else if(i2) begin
        y1 = 1;
        y0 = 0;
    end

    else if(i1) begin
        y1 = 0;
        y0 = 1;
    end

    else begin
        y1 = 0;
        y0 = 0;
    end

end

endmodule