-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thp_ysxfw_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thp_ysxfw_order_detail_yousaved_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('thp_ysxfw_order_detail_yousaved_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('thp_ysxfw_order_detail_yousaved_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thp_ysxfw_order_detail_yousaved_amount');

