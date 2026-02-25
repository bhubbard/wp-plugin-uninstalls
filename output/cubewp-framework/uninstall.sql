-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubewp_framework_installed_on', 'permanently_removed_notices', 'cwpOptions', 'cwp_custom_taxonomies', 'cwp_custom_types', 'cwp_userdash', 'cwp_custom_post_types', 'theme_user_licenses', 'cubewp_crm_ping');
DELETE FROM wp_options WHERE option_name LIKE '%_key';
DELETE FROM wp_options WHERE option_name LIKE '%_form';
DELETE FROM wp_options WHERE option_name LIKE '%_update_check';
DELETE FROM wp_options WHERE option_name LIKE '%_checking';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cwp_group_fields', 'cubewp_post_views', 'plan_id', 'plan_price', 'payment_status', 'template_location', 'cwp_save_user_post', 'template_type', '_wp_attachment_image_alt', 'plan_post_type', 'default_col_class', '_cwp_group_visibility', 'preview_post_id', 'primary_post_card', 'preview_term_slug', '_menu_item_menu_item_parent', '_thumbnail_id', '_cwp_group_terms', '_cwp_group_sub_fields', '_cwp_group_order', '_cwp_group_types', '_cwp_group_user_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cwp_group_fields', 'cubewp_post_views', 'plan_id', 'plan_price', 'payment_status', 'template_location', 'cwp_save_user_post', 'template_type', '_wp_attachment_image_alt', 'plan_post_type', 'default_col_class', '_cwp_group_visibility', 'preview_post_id', 'primary_post_card', 'preview_term_slug', '_menu_item_menu_item_parent', '_thumbnail_id', '_cwp_group_terms', '_cwp_group_sub_fields', '_cwp_group_order', '_cwp_group_types', '_cwp_group_user_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cwp_group_fields', 'cubewp_post_views', 'plan_id', 'plan_price', 'payment_status', 'template_location', 'cwp_save_user_post', 'template_type', '_wp_attachment_image_alt', 'plan_post_type', 'default_col_class', '_cwp_group_visibility', 'preview_post_id', 'primary_post_card', 'preview_term_slug', '_menu_item_menu_item_parent', '_thumbnail_id', '_cwp_group_terms', '_cwp_group_sub_fields', '_cwp_group_order', '_cwp_group_types', '_cwp_group_user_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cwp_group_fields', 'cubewp_post_views', 'plan_id', 'plan_price', 'payment_status', 'template_location', 'cwp_save_user_post', 'template_type', '_wp_attachment_image_alt', 'plan_post_type', 'default_col_class', '_cwp_group_visibility', 'preview_post_id', 'primary_post_card', 'preview_term_slug', '_menu_item_menu_item_parent', '_thumbnail_id', '_cwp_group_terms', '_cwp_group_sub_fields', '_cwp_group_order', '_cwp_group_types', '_cwp_group_user_roles');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_lat';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_lat';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_lat';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_lat';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_lng';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_lng';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_lng';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_lng';

