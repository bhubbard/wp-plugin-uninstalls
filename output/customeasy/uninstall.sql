-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcce_global_head_code', 'lcce_global_footer_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lcce_head_code', 'jph_head_code', 'lcce_footer_code', 'jph_footer_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('lcce_head_code', 'jph_head_code', 'lcce_footer_code', 'jph_footer_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('lcce_head_code', 'jph_head_code', 'lcce_footer_code', 'jph_footer_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lcce_head_code', 'jph_head_code', 'lcce_footer_code', 'jph_footer_code');

