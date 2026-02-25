-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mydr_dataask1', 'mydr_dataask2', 'mydr_dataask3', 'mydr_dataask4', 'mydr_dataplaceholder', 'mydr_datatitle', 'mydr_datasubmittext', 'mydr_datadata1', 'mydr_datadata2', 'mydr_datasubmit', 'mydr_dr_mydataplaceholder');

