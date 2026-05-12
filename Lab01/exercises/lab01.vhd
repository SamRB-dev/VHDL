entity XORGATTER is 
    port (
        x, y: in bit;
        z: out bit);
end entity;
architecture Data of XORGATTER is
    begin
        z <= x xor y;
end architecture;