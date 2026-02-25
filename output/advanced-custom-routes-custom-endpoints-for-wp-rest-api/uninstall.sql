-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cd_acr_custom_field_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cd_acr_amount', 'cd_acr_offset', 'cd_acr_authors_exclude', 'cd_acr_authors', 'cd_acr_categories_exclude', 'cd_acr_categories', 'cd_acr_date_after', 'cd_acr_date_before', 'cd_acr_order', 'cd_acr_orderby', 'cd_acr_post_ids_exclude', 'cd_acr_post_ids', 'cd_acr_post_parent_exclude', 'cd_acr_post_parent_include', 'cd_acr_post_types', 'cd_acr_status', 'cd_acr_tags_exclude', 'cd_acr_tags', 'cd_acr_output_fields', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('cd_acr_amount', 'cd_acr_offset', 'cd_acr_authors_exclude', 'cd_acr_authors', 'cd_acr_categories_exclude', 'cd_acr_categories', 'cd_acr_date_after', 'cd_acr_date_before', 'cd_acr_order', 'cd_acr_orderby', 'cd_acr_post_ids_exclude', 'cd_acr_post_ids', 'cd_acr_post_parent_exclude', 'cd_acr_post_parent_include', 'cd_acr_post_types', 'cd_acr_status', 'cd_acr_tags_exclude', 'cd_acr_tags', 'cd_acr_output_fields', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('cd_acr_amount', 'cd_acr_offset', 'cd_acr_authors_exclude', 'cd_acr_authors', 'cd_acr_categories_exclude', 'cd_acr_categories', 'cd_acr_date_after', 'cd_acr_date_before', 'cd_acr_order', 'cd_acr_orderby', 'cd_acr_post_ids_exclude', 'cd_acr_post_ids', 'cd_acr_post_parent_exclude', 'cd_acr_post_parent_include', 'cd_acr_post_types', 'cd_acr_status', 'cd_acr_tags_exclude', 'cd_acr_tags', 'cd_acr_output_fields', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cd_acr_amount', 'cd_acr_offset', 'cd_acr_authors_exclude', 'cd_acr_authors', 'cd_acr_categories_exclude', 'cd_acr_categories', 'cd_acr_date_after', 'cd_acr_date_before', 'cd_acr_order', 'cd_acr_orderby', 'cd_acr_post_ids_exclude', 'cd_acr_post_ids', 'cd_acr_post_parent_exclude', 'cd_acr_post_parent_include', 'cd_acr_post_types', 'cd_acr_status', 'cd_acr_tags_exclude', 'cd_acr_tags', 'cd_acr_output_fields', '_wp_attachment_image_alt');

