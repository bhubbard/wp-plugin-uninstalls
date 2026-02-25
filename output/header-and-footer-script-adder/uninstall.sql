-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asm_global_settings', 'asm_version', 'asm_remove_data_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_asm_header_scripts', '_asm_body_scripts', '_asm_footer_scripts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_asm_header_scripts', '_asm_body_scripts', '_asm_footer_scripts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_asm_header_scripts', '_asm_body_scripts', '_asm_footer_scripts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_asm_header_scripts', '_asm_body_scripts', '_asm_footer_scripts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

