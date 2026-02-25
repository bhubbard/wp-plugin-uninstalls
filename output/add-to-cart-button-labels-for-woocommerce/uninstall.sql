-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_add_to_cart_button_labels_enabled', 'alg_wc_add_to_cart_button_labels_version', 'woocommerce_version', 'alg_wc_atcbl_per_tag_group_enabled', 'alg_wc_atcbl_per_tag_group_ids', 'alg_wc_atcbl_per_user_role_group_enabled', 'alg_wc_atcbl_per_user_role_group_roles', 'alg_wc_atcbl_per_user_group_enabled', 'alg_wc_atcbl_per_user_group_users');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_button_labels_all_products_%';
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_per_category_enabled_group_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_add_to_cart_per_category_ids_group_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_tag_group_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_user_role_group_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_atcbl_per_user_group_label_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%single';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%single';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%single';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%single';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

