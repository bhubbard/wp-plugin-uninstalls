-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpecpp_settings', 'wpecpp_settingsoptions', 'wpecpp_my_plugin_notice_shown', 'wpecpp_admin_notice_shown', 'wpplugin_paypal_button_plugin_admin_settings', 'wpecpp_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpplugin_paypal_button_price', '_wpecpp_alignment', 'wpplugin_paypal_button_disable_paypal', 'wpplugin_paypal_button_disable_stripe', 'wpplugin_paypal_button_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpplugin_paypal_button_price', '_wpecpp_alignment', 'wpplugin_paypal_button_disable_paypal', 'wpplugin_paypal_button_disable_stripe', 'wpplugin_paypal_button_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpplugin_paypal_button_price', '_wpecpp_alignment', 'wpplugin_paypal_button_disable_paypal', 'wpplugin_paypal_button_disable_stripe', 'wpplugin_paypal_button_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpplugin_paypal_button_price', '_wpecpp_alignment', 'wpplugin_paypal_button_disable_paypal', 'wpplugin_paypal_button_disable_stripe', 'wpplugin_paypal_button_quantity');

