-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ratcwp_hide_user_role', 'ratcwp_hide_cart_button', 'ratcwp_hide_products', 'cps_hide_categories', 'ratcwp_enable_hide_pirce_guest', 'ratcwp_enable_hide_pirce_registered', 'ratcwp_price_text', 'ratcwp_cart_button_link', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ratcwp_enable_hide_pirce', 'ratcwp_enable_hide_pirce_all', 'ratcwp_hide_price', 'ratcwp_cart_button_text', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpiudacb_disable_add_to_cart', 'wpiudacb_inqure_us_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpiudacb_disable_add_to_cart', 'wpiudacb_inqure_us_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpiudacb_disable_add_to_cart', 'wpiudacb_inqure_us_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpiudacb_disable_add_to_cart', 'wpiudacb_inqure_us_link');

