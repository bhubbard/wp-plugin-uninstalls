-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_best2pay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('best2pay_order_state', 'best2pay_order_fb', 'best2pay_order_moderated', 'best2pay_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('best2pay_order_state', 'best2pay_order_fb', 'best2pay_order_moderated', 'best2pay_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('best2pay_order_state', 'best2pay_order_fb', 'best2pay_order_moderated', 'best2pay_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('best2pay_order_state', 'best2pay_order_fb', 'best2pay_order_moderated', 'best2pay_order_id');

