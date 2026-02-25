-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enyoi_store_info_options', 'enyoi_store_info_translation_notice', 'enyoi_store_info_network_options', 'widget_enyoi_store_info_widget');

