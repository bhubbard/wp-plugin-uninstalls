-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cisl_trust_badges_enabled', 'cisl_badges_title', 'cisl_badge_cards', 'cisl_badge_paypal', 'cisl_badge_ssl', 'cisl_badge_guarantee', 'woocommerce_checkout_page_id', 'woocommerce_cart_page_id', 'woocommerce_enable_guest_checkout', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%privacy_policy_url';
DELETE FROM wp_options WHERE option_name LIKE '%terms_conditions_url';
DELETE FROM wp_options WHERE option_name LIKE '%skip_cart_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%trust_badges_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%badges_title';
DELETE FROM wp_options WHERE option_name LIKE '%admin_notice';

