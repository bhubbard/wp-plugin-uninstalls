-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_tailor_icon_kits', '_tailor_editor_styles', 'jetpack_portfolio', 'jetpack_testimonial', 'tailor_version', 'tailor_previous_version', 'tailor_control_definitions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tailor_layout', '_post_title', '_wp_attachment_image_alt', '_edit_lock', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tailor_layout', '_post_title', '_wp_attachment_image_alt', '_edit_lock', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tailor_layout', '_post_title', '_wp_attachment_image_alt', '_edit_lock', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tailor_layout', '_post_title', '_wp_attachment_image_alt', '_edit_lock', '_edit_last');

