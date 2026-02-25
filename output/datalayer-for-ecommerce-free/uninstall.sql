-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tracking_option_pro', 'options_tracking_option_free', 'migrate_datalayer_for_woocommerce', 'woocommerce_tax_display_shop', 'active_sitewide_plugins');

