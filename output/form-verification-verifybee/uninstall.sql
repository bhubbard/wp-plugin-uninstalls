-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cn_verification', 'cn_token', 'cn_verify_widget_key');

