-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ncmwcp1802_upsell_settings_type', 'ncmwcp1802_upsell_settings_only_product_page', 'ncmwcp1802_upsell_settings_title', 'ncmwcp1802_upsell_settings_subtitle', 'ncmwcp1802_upsell_settings_hide_out_of_stock', 'ncmwcp1802_upsell_settings_show_label_for_backorders');

