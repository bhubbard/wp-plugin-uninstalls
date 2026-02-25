-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saboxplugin_options', 'sab_version', 'sab_error_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sabox_social_links', 'sabox-profile-image', '_disable_sab_author_here', '_wp_attachment_image_alt', 'sab_box_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('sabox_social_links', 'sabox-profile-image', '_disable_sab_author_here', '_wp_attachment_image_alt', 'sab_box_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('sabox_social_links', 'sabox-profile-image', '_disable_sab_author_here', '_wp_attachment_image_alt', 'sab_box_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sabox_social_links', 'sabox-profile-image', '_disable_sab_author_here', '_wp_attachment_image_alt', 'sab_box_link');

