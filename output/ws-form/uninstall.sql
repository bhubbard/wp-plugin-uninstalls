-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ws_form_submissions_clear_hidden_fields', 'first_name', 'last_name', 'description', 'nickname', 'admin_color', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ws_form_submissions_clear_hidden_fields', 'first_name', 'last_name', 'description', 'nickname', 'admin_color', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ws_form_submissions_clear_hidden_fields', 'first_name', 'last_name', 'description', 'nickname', 'admin_color', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ws_form_submissions_clear_hidden_fields', 'first_name', 'last_name', 'description', 'nickname', 'admin_color', '_wp_attachment_image_alt');

