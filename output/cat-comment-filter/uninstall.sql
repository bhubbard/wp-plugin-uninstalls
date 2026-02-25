-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Cat-Comment-Filter-1', 'Cat-Comment-Filter-2', 'Cat-Comment-Filter-3', 'Cat-Comment-Filter-4', 'Cat-Comment-Filter-5', 'Cat-Comment-Filter-6', 'Cat-Comment-Filter-7', 'Cat-Comment-Filter-8', 'Cat-Comment-Filter-9', 'Cat-Comment-Filter-10', 'Cat-Comment-Filter-11', 'Cat-Comment-Filter-15', 'Cat-Comment-Filter-16', 'Cat-Comment-Filter-17', 'Cat-Comment-Filter-18', 'Cat-Comment-Filter-19', 'Cat-Comment-Filter-20', 'Cat-Comment-Filter-21', 'Cat-Comment-Filter-22', 'Cat-Comment-Filter-23', 'Cat-Comment-Filter-24', 'Cat-Comment-Filter-25', 'Cat-Comment-Filter-12', 'Cat-Comment-Filter-13', 'Cat-Comment-Filter-14');

