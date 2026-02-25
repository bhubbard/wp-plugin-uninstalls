-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rdynamic_meta_data', 'ast-title-bar-display', 'rdynamic_template_id', 'dynapama_layout_preference', 'child_page_of');
DELETE FROM wp_usermeta WHERE meta_key IN ('rdynamic_meta_data', 'ast-title-bar-display', 'rdynamic_template_id', 'dynapama_layout_preference', 'child_page_of');
DELETE FROM wp_termmeta WHERE meta_key IN ('rdynamic_meta_data', 'ast-title-bar-display', 'rdynamic_template_id', 'dynapama_layout_preference', 'child_page_of');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rdynamic_meta_data', 'ast-title-bar-display', 'rdynamic_template_id', 'dynapama_layout_preference', 'child_page_of');

