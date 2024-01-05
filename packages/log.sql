
-- *** The Lost Letter ***
 select address, type from addresses where id = ( select address_id from scans where package_id = ( select id from packages where from_address_id  = (select id from addresses where address = "900 Somerville Avenue")) AND action = "Drop");

-- *** The Devious Delivery ***
-- Find the content of the packages
SELECT packages.contents FROM packages WHERE from_address_id is null;
-- Find the address type
select type from addresses where id = (select address_id from packages JOIN scans ON packages.id = scans.package_id WHERE packages.from_address_id is NULL AND scans.action="Drop");
-- *** The Forgotten Gift ***

-- Get the package id, content
select contents from packages where from_address_id = (select id from addresses where address = "109 Tileston Street");

-- Get the id of the address
select name from drivers WHERE id = (select driver_id from scans where package_id = (select id from packages where from_address_id = (select id from addresses where address = "109 Tileston Street")) ORDER BY scans.timestamp DESC LIMIT 1);
