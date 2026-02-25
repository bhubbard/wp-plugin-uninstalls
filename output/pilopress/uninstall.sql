-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pip_styles', 'polylang', 'pilopress', 'pip_tailwind_api_compile_error', 'pip_tailwind_api_compile_success');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linked_post_type', 'linked_taxonomy', 'acf', 'pip_flexible');
DELETE FROM wp_usermeta WHERE meta_key IN ('linked_post_type', 'linked_taxonomy', 'acf', 'pip_flexible');
DELETE FROM wp_termmeta WHERE meta_key IN ('linked_post_type', 'linked_taxonomy', 'acf', 'pip_flexible');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linked_post_type', 'linked_taxonomy', 'acf', 'pip_flexible');

