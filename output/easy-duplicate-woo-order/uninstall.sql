-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wizbee_duplicate_order_add_order_menu', 'wizbee_duplicate_order_add_order_topbar', 'wizbee_duplicate_order_copy_old_price', 'wizbee_duplicate_order_copy_fees', 'wizbee_duplicate_order_copy_shipping', 'wizbee_duplicate_order_apply_coupons', 'wizbee_duplicate_order_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wb_edwo_notice_dismissed_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('wb_edwo_notice_dismissed_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('wb_edwo_notice_dismissed_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wb_edwo_notice_dismissed_version');

