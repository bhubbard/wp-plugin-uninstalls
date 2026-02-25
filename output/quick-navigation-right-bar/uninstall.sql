-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qnrb_feedback');
DELETE FROM wp_options WHERE option_name LIKE 'qnrb_%';

