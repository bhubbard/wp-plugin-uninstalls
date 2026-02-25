-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sn_ot_carriers', 'sn_ot_shipping_detail_text', 'sn_ot_tracking_detail_text', 'sn_ot_tracking_form_caption', 'sn_ot_no_tracking_detail_found_text', 'sn_ot_show_order_detail', 'woocommerce_email_footer_text');

