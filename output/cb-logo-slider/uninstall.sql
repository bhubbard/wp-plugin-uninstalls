-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbls_munber_of_images', 'cbls_controls', 'cbls_pagination', 'cbls_slide_speed', 'cbls_navigation_text_next', 'cbls_navigation_text_prev');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbls_logo_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbls_logo_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbls_logo_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'cbls_logo_url');

