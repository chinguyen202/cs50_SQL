
-- *** The Lost Letter ***
 -- Find the id of the address of sender
 select id from addresses where address = "900 Somerville Avenue";
 -- Find the id of the letter and get info
 select * from packages where from_address_id  = "432";
 -- Find the info of action and deliver address for the letter
 select * from scans where package_id = 384;
 -- Find the final address:
 select * from addresses where id = 854;

-- *** The Devious Delivery ***
-- Find the package which has no from address
select * from packages where from_address_id is null;
-- Find the info of package from system
select * from scans where package_id = 5098;
-- *** The Forgotten Gift ***
-- Get the id of the from address
select * from addresses where address = "728 Maple Place";
-- Get the package id
select * from packages where from_address_id = 4983;
-- Check where is last address the package was drop
select * from scans where package_id = 6269;
-- Get the id of the address
select * from addresses where id = 4425;
