-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_customizer_active_customizations', 'woocommerce_db_version', 'active_sitewide_plugins', 'wc_customizer_version');

