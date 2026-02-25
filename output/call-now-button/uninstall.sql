-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cnb', 'cnb_email_activation_wp_nonce', 'cnb_cloud_migration_done', 'cnb_css_location', 'cnb_js_location', 'cnb_user_root', 'cnb_static_root', 'cnb_chat_root', 'cnb_storage_type', 'cnb_activation', 'cnb-options');
DELETE FROM wp_options WHERE option_name LIKE '%total_buttons';
DELETE FROM wp_options WHERE option_name LIKE '%active_buttons';
DELETE FROM wp_options WHERE option_name LIKE '%total_actions';

