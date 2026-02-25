-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('firevert_settings', 'woocommerce_shop_page_id', 'logger_enabled', 'firevert_validation_errors', 'firevert_module_disabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iwo_price_lowest_date', 'firevert_promo_time_widget_display_position', 'firevert_spectator_views_display_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iwo_price_lowest_date', 'firevert_promo_time_widget_display_position', 'firevert_spectator_views_display_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iwo_price_lowest_date', 'firevert_promo_time_widget_display_position', 'firevert_spectator_views_display_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iwo_price_lowest_date', 'firevert_promo_time_widget_display_position', 'firevert_spectator_views_display_position');

