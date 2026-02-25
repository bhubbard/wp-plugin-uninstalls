-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storegrowth_activation_redirect', 'active_sitewide_plugins', 'spsg_user_consent_data', 'spsg_ini_completion', 'woocommerce_currency_pos', 'spsg_bogo_dokan_vendors_settings', 'spsg_bogo_general_settings', 'spsg_bogo_migration_backup', 'spsg_countdown_timer_settings', 'spsg_direct_checkout_settings', 'spsg_floating_notification_bar_settings', 'spsg_fly_cart_settings', 'spsg_progressive_discount_banner_settings', 'spsg_discount_banner_flags', 'spsg_quick_view_settings', 'spsg_popup_products', 'spsg_stock_bar_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spsg_countdown_timer_discount_start', '_spsg_countdown_timer_discount_end', '_spsg_countdown_timer_discount_amount', '_spsg_direct_checkout_button_layout', 'wpcvi_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spsg_countdown_timer_discount_start', '_spsg_countdown_timer_discount_end', '_spsg_countdown_timer_discount_amount', '_spsg_direct_checkout_button_layout', 'wpcvi_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spsg_countdown_timer_discount_start', '_spsg_countdown_timer_discount_end', '_spsg_countdown_timer_discount_amount', '_spsg_direct_checkout_button_layout', 'wpcvi_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spsg_countdown_timer_discount_start', '_spsg_countdown_timer_discount_end', '_spsg_countdown_timer_discount_amount', '_spsg_direct_checkout_button_layout', 'wpcvi_images');

