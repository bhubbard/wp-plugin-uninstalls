-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cta_box_button_link', 'cta_box_description', 'cta_box_button_id', 'cta_box_button_text', 'cta_box_template_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('cta_box_button_link', 'cta_box_description', 'cta_box_button_id', 'cta_box_button_text', 'cta_box_template_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('cta_box_button_link', 'cta_box_description', 'cta_box_button_id', 'cta_box_button_text', 'cta_box_template_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cta_box_button_link', 'cta_box_description', 'cta_box_button_id', 'cta_box_button_text', 'cta_box_template_id');

