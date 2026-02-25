-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hellobar_api_key', '_hellobar-for-wordpress--options');

