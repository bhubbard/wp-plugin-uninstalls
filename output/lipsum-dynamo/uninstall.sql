-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lipsum-dynamo', 'lipsum_dynamo-cleanup', 'lipsum-dynamo-uninstall', 'lipsum-dynamo-general', 'lipnamo_db_version', 'lipsum_dynamo');

