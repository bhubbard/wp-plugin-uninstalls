-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_loya_settings');
DELETE FROM wp_options WHERE option_name LIKE 'loya_oauth_state_%';
DELETE FROM wp_options WHERE option_name LIKE 'loya_session_%';

