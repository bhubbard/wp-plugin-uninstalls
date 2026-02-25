-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woow_whatsapp_number', 'woow_show_after', 'woow_rev_notice_hide', 'woow_show_on_shop_single', 'woocommerce_currency', 'woow_custom_message', 'woow_hide_add_to_cart', 'woow_hide_proceed_to_checkout');

