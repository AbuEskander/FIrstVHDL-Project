entity FirstProject is 
    end entity;

architecture sim of FirstProject is
begin
    process is 
    variable i : integer :=0;
    begin 
       while i < 10 loop 
            report "Hello World";
            wait for 10 ns;
            i := i + 1;
        end loop;
        report "I'm done";
        wait;

    end process;

end architecture;