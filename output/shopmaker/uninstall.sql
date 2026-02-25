-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swpsm_widget_settings', 'swpsm_template_options', 'woocommerce_thumbnail_cropping', 'woocommerce_thumbnail_cropping_custom_width', 'woocommerce_thumbnail_cropping_custom_height', 'woocommerce_enable_myaccount_registration', 'woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swpsm_individual_single_prod_template', 'swpsm_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swpsm_individual_single_prod_template', 'swpsm_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swpsm_individual_single_prod_template', 'swpsm_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swpsm_individual_single_prod_template', 'swpsm_wishlist');

