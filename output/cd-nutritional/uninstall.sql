-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('checkbox_field_header', 'checkbox_extra_tab', 'checkbox_in_body');
DELETE FROM wp_usermeta WHERE meta_key IN ('checkbox_field_header', 'checkbox_extra_tab', 'checkbox_in_body');
DELETE FROM wp_termmeta WHERE meta_key IN ('checkbox_field_header', 'checkbox_extra_tab', 'checkbox_in_body');
DELETE FROM wp_commentmeta WHERE meta_key IN ('checkbox_field_header', 'checkbox_extra_tab', 'checkbox_in_body');

