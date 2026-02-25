-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chc_on_login', 'chc_site_key', 'chc_secret_key', 'chc_hashcount', 'chc_color_option', 'chc_on_comment', 'chc_on_woocommerce', 'chc_exlude_ips', 'chc_exlude_ips_forwarded_for', 'chc_db_version', 'chc-admin-notice-example');

