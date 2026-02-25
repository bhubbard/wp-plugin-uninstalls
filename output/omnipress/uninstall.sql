-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('op_disabled_blocks', 'omnipress_consent_optin', 'taxonomy_image_enabled_taxonomies', 'omnipress_restricted_user_roles', 'omnipress_disabled_blocks', 'omnipress_library_button_option', 'omnipress_container_gap', 'op_breakpoint', 'omnipress_container_default_styling', 'omnipress_maintenance_mode', 'omnipress_downloaded_images_urls', 'omnipress_prev_version', 'omnipress_fields', 'omnipress_global_wp_template_fonts', 'omnipress_global_wp_template_part_fonts', 'myplugin_coming_soon', 'op_popup_render_count', 'omnipress_consent_skip', 'omnipress_coming_soon_bypass_url', 'omnipress_recommended_plugins_notice', 'op_coming_soon_bypass_url', 'in_stock_count', 'out_of_stock_count', 'omnipress_blocks_details', 'omnipress_blocks_lists', 'op_demo_imported', 'omnipress_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_omnipress_used_blocks';
DELETE FROM wp_options WHERE option_name LIKE '%-used_blocks';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'opp_is_enabled', 'omnipress_post_type_fonts', 'thumbnail', '_author_name', '_author_role', '_author_company', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_product_type', '_crosssell_ids', '_upsell_ids', '_related_product_ids', '_product_attributes', '_product_custom_fields', 'brand_image_id', 'op_thumbnail', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'opp_is_enabled', 'omnipress_post_type_fonts', 'thumbnail', '_author_name', '_author_role', '_author_company', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_product_type', '_crosssell_ids', '_upsell_ids', '_related_product_ids', '_product_attributes', '_product_custom_fields', 'brand_image_id', 'op_thumbnail', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'opp_is_enabled', 'omnipress_post_type_fonts', 'thumbnail', '_author_name', '_author_role', '_author_company', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_product_type', '_crosssell_ids', '_upsell_ids', '_related_product_ids', '_product_attributes', '_product_custom_fields', 'brand_image_id', 'op_thumbnail', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'opp_is_enabled', 'omnipress_post_type_fonts', 'thumbnail', '_author_name', '_author_role', '_author_company', '_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_image_alt', '_product_type', '_crosssell_ids', '_upsell_ids', '_related_product_ids', '_product_attributes', '_product_custom_fields', 'brand_image_id', 'op_thumbnail', '_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_omnipress_used_blocks';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_omnipress_used_blocks';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_omnipress_used_blocks';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_omnipress_used_blocks';

