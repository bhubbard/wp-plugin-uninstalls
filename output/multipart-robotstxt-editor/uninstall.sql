-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mprt_records', 'mprt_plugin', 'mprt_remote_content');

