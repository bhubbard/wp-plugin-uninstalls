-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('koala_ai_first_image_as_featured', 'koala_ai_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_koala_ai_original_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_koala_ai_original_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_koala_ai_original_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_koala_ai_original_url');

