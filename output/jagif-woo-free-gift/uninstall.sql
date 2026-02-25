-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jagif_list_product_gift', 'jagif_woo_free_gift_params', 'jagif_display_conditions', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jagif-woo_free_gift_override', 'jagif-woo_free_gift_rules', 'jagif-woo_free_gift_enable', 'jagif-woo_free_gift_description', 'jagif-woo_free_gift_gift', 'jagif_gift_pack_in_product', '_default_attributes', 'jagif_qty_gift_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('jagif-woo_free_gift_override', 'jagif-woo_free_gift_rules', 'jagif-woo_free_gift_enable', 'jagif-woo_free_gift_description', 'jagif-woo_free_gift_gift', 'jagif_gift_pack_in_product', '_default_attributes', 'jagif_qty_gift_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('jagif-woo_free_gift_override', 'jagif-woo_free_gift_rules', 'jagif-woo_free_gift_enable', 'jagif-woo_free_gift_description', 'jagif-woo_free_gift_gift', 'jagif_gift_pack_in_product', '_default_attributes', 'jagif_qty_gift_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jagif-woo_free_gift_override', 'jagif-woo_free_gift_rules', 'jagif-woo_free_gift_enable', 'jagif-woo_free_gift_description', 'jagif-woo_free_gift_gift', 'jagif_gift_pack_in_product', '_default_attributes', 'jagif_qty_gift_order');

