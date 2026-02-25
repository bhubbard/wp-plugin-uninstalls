-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tls_munber_of_images', 'tls_controls', 'tls_pagination', 'tls_slide_speed', 'tls_navigation_text_next', 'tls_navigation_text_prev');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'tls_logo_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'tls_logo_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'tls_logo_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'tls_logo_url');

