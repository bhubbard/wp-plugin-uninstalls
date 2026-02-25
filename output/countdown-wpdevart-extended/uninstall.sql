-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpda_countdown_extended_params', 'wpdevart_countdown_extended_popup_enable', 'wpdevart_countdown_extended_product_postiton', 'wpdevart_countdown_extended_shop_position', 'woocommerce_enable_timer_in_all_prod', 'wpdevart_countdown_woocommerce_all_timer', 'wpdevart_countdown_woocommerce_all_theme', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpda_countdown_extended_enable', 'wpda_countdown_extended_timer', 'wpda_countdown_extended_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpda_countdown_extended_enable', 'wpda_countdown_extended_timer', 'wpda_countdown_extended_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpda_countdown_extended_enable', 'wpda_countdown_extended_timer', 'wpda_countdown_extended_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpda_countdown_extended_enable', 'wpda_countdown_extended_timer', 'wpda_countdown_extended_theme');

