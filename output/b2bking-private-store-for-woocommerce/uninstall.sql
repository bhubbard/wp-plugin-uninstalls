-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b2bking_plugin_status_setting', 'b2bking_current_tab_setting', 'b2bking_guest_access_restriction_setting', 'b2bking_hide_prices_guests_text_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('b2bking_dismiss_activate_woocommerce_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('b2bking_dismiss_activate_woocommerce_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('b2bking_dismiss_activate_woocommerce_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('b2bking_dismiss_activate_woocommerce_notice');

