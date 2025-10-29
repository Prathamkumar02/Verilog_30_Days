/*
Design a Verilog system that outputs a 1 as soon
as both the req (request) and ack
(acknowledgment) signals become high. The
system should continuously monitor these two
signals, and once both are asserted (req = 1 and
ack = 1), the output should immediately become 1. Reset the output to 0 when either of the input
signals is deasserted.
*/

/*In Verilog, system tasks like $display, $monitor, $finish, etc.
must be executed as part of procedural code, not in the declaration area.
If you do => Syntax Error*/
