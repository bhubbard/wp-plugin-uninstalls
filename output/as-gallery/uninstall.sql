-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('as_gl_sv_opt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('as_gl_image_column', 'as_gl_image_size', 'as_gl_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('as_gl_image_column', 'as_gl_image_size', 'as_gl_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('as_gl_image_column', 'as_gl_image_size', 'as_gl_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('as_gl_image_column', 'as_gl_image_size', 'as_gl_image');

