-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resconbop_fading_excerpt_info', 'resconbop_excerpt_length', 'resconbop_custom_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('resconbop_meta_info', 'resconbop_product_select', 'resconbop_selected_page_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('resconbop_meta_info', 'resconbop_product_select', 'resconbop_selected_page_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('resconbop_meta_info', 'resconbop_product_select', 'resconbop_selected_page_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('resconbop_meta_info', 'resconbop_product_select', 'resconbop_selected_page_id');

