-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pinnacle', 'virtue', 'ascend', 'kadence_toolkit_flushpermalinks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('occupation', 'twitter', 'facebook', 'google', 'youtube', 'flickr', 'vimeo', 'linkedin', 'dribbble', 'pinterest', 'instagram', '_wp_page_template', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_kad_contact_map', '_kad_contact_form_math', '_kad_contact_form_title', '_kad_contact_form', '_kad_contact_address', '_kad_contact_maptype', '_kad_contact_mapheight', '_kad_contact_zoom', '_kad_contact_form_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('occupation', 'twitter', 'facebook', 'google', 'youtube', 'flickr', 'vimeo', 'linkedin', 'dribbble', 'pinterest', 'instagram', '_wp_page_template', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_kad_contact_map', '_kad_contact_form_math', '_kad_contact_form_title', '_kad_contact_form', '_kad_contact_address', '_kad_contact_maptype', '_kad_contact_mapheight', '_kad_contact_zoom', '_kad_contact_form_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('occupation', 'twitter', 'facebook', 'google', 'youtube', 'flickr', 'vimeo', 'linkedin', 'dribbble', 'pinterest', 'instagram', '_wp_page_template', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_kad_contact_map', '_kad_contact_form_math', '_kad_contact_form_title', '_kad_contact_form', '_kad_contact_address', '_kad_contact_maptype', '_kad_contact_mapheight', '_kad_contact_zoom', '_kad_contact_form_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('occupation', 'twitter', 'facebook', 'google', 'youtube', 'flickr', 'vimeo', 'linkedin', 'dribbble', 'pinterest', 'instagram', '_wp_page_template', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_kad_contact_map', '_kad_contact_form_math', '_kad_contact_form_title', '_kad_contact_form', '_kad_contact_address', '_kad_contact_maptype', '_kad_contact_mapheight', '_kad_contact_zoom', '_kad_contact_form_email');

