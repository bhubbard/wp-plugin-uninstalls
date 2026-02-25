-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avalon23_settings', 'avalon23_current_version', 'avalon23_db_ver', 'avalon23_seo', 'avalon23_seo_settings', 'woocommerce_tax_display_shop');

