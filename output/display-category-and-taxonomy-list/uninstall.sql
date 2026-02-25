-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dcatl_admin_style_settings', 'dcatl_active_notice', 'dcatl_dependency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dcatl_term_image', '_wp_attachment_image_alt', 'dcatl_install_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('dcatl_term_image', '_wp_attachment_image_alt', 'dcatl_install_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('dcatl_term_image', '_wp_attachment_image_alt', 'dcatl_install_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dcatl_term_image', '_wp_attachment_image_alt', 'dcatl_install_time');

