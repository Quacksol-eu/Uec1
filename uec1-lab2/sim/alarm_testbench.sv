module alarm_tb;

    logic [4:0] doors;
    logic alarm;

    alarm alarm_dut(doors[0], doos[1], doors[2], doors[3], doors[4], alarm);

    initial begin

        $monitor("door0 = %b, door0 = %b, door0 = %b, door0 = %b, door0 = %b, alarm = %b ", doors[0], doos[1], doors[2], doors[3], doors[4], alarm);
        
        doors = 5'b0;

        for (int i = 0; i < 6; i++) begin
            doors[i] = 1'b1;
            #10
            assert (alarm == 1) else
                $error("alarm sie nie wlaczyl");
        end

        #10

        doors = 5'b0;

        assert (alarm == 0) else
                $error("alarm sie nie wlaczyl");


        
    end
    
endmodule