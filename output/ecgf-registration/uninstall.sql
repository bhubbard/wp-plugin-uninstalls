-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecgf_form_id', 'ecgf_form_settings', 'ecgf_form_meta', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecgf_form_id', 'ecgf_form_settings', 'ecgf_form_meta', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecgf_form_id', 'ecgf_form_settings', 'ecgf_form_meta', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecgf_form_id', 'ecgf_form_settings', 'ecgf_form_meta', '_wp_page_template');

