-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgda_total_orders', 'sg_doa_orders_auto_cancel', 'sg_doa_orders_auto_cancel_duration', 'sg_doa_orders_auto_cancel_duration_mode', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thankyou_action_done', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thankyou_action_done', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thankyou_action_done', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thankyou_action_done', '_payment_method');

