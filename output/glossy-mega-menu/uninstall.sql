-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glossymm_options', 'glossy_post_validation_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_glossymm_hf_template_type', '_glossymm_hf_target_location', 'glossymm_enabled_template', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_image', '_glossymm_vertical_header', '_glossymm_hf_target_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_glossymm_hf_template_type', '_glossymm_hf_target_location', 'glossymm_enabled_template', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_image', '_glossymm_vertical_header', '_glossymm_hf_target_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_glossymm_hf_template_type', '_glossymm_hf_target_location', 'glossymm_enabled_template', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_image', '_glossymm_vertical_header', '_glossymm_hf_target_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_glossymm_hf_template_type', '_glossymm_hf_target_location', 'glossymm_enabled_template', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_image', '_glossymm_vertical_header', '_glossymm_hf_target_roles');

