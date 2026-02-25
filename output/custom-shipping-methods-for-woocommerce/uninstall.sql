-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_custom_shipping_methods_version', 'alg_wc_custom_shipping_methods_plugin_enabled', 'alg_wc_custom_shipping_methods_do_replace_zero_cost', 'alg_wc_custom_shipping_methods_icon_desc_enabled', 'alg_wc_custom_shipping_methods_do_trigger_checkout_update', 'alg_wc_custom_shipping_methods_replace_zero_cost_text', 'alg_wc_custom_shipping_methods_admin_title');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

