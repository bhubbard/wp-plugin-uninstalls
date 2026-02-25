-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mia_settings', 'miapg_db_version', 'miapg_access_token');

