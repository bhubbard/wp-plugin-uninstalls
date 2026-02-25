-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccfbw_install_date', 'woocommerce_enable_guest_checkout', '_site_transient_envato_market_themes', 'popup_data', 'notices_data', 'notification_data', 'woocommerce_enable_order_comments', 'woocommerce_ship_to_destination', 'woocommerce_tax_total_display', 'stm_buy_pro_notice_setting', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'stm_mailchimp_integration_member_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'custom_%';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_setting';
DELETE FROM wp_options WHERE option_name LIKE '%_themes';
DELETE FROM wp_options WHERE option_name LIKE 'wp_org_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode');

