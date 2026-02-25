-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dk_spx_old_order_status_converted', 'dk_spx_convert_old_order_status', 'dk_spx_callback_key_send', 'woocommerce_sparxpres_settings', 'woocommerce_xprespay_settings');

