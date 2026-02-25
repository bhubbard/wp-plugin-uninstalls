-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relations_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_relations_posts_per_page', '_relations_position', '_relations_content_type', '_relations_display_type', '_relations_order_type', '_relations_inject_paragraph_number', '_relations_template', '_relations_custom_posts', '_relations_custom_display_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_relations_posts_per_page', '_relations_position', '_relations_content_type', '_relations_display_type', '_relations_order_type', '_relations_inject_paragraph_number', '_relations_template', '_relations_custom_posts', '_relations_custom_display_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_relations_posts_per_page', '_relations_position', '_relations_content_type', '_relations_display_type', '_relations_order_type', '_relations_inject_paragraph_number', '_relations_template', '_relations_custom_posts', '_relations_custom_display_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_relations_posts_per_page', '_relations_position', '_relations_content_type', '_relations_display_type', '_relations_order_type', '_relations_inject_paragraph_number', '_relations_template', '_relations_custom_posts', '_relations_custom_display_type');

