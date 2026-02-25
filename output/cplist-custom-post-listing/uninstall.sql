-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_type', 'type', 'columns', 'post_limit', 'bg_color', 'text_color', 'button_color', 'show_title', 'show_image', 'show_date', 'show_description', 'show_button', 'field_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_type', 'type', 'columns', 'post_limit', 'bg_color', 'text_color', 'button_color', 'show_title', 'show_image', 'show_date', 'show_description', 'show_button', 'field_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_type', 'type', 'columns', 'post_limit', 'bg_color', 'text_color', 'button_color', 'show_title', 'show_image', 'show_date', 'show_description', 'show_button', 'field_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_type', 'type', 'columns', 'post_limit', 'bg_color', 'text_color', 'button_color', 'show_title', 'show_image', 'show_date', 'show_description', 'show_button', 'field_order');

