-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbSettings', 'tssSettings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tb_token', 'tb_token_created', 'tb_token_last_used');
DELETE FROM wp_usermeta WHERE meta_key IN ('tb_token', 'tb_token_created', 'tb_token_last_used');
DELETE FROM wp_termmeta WHERE meta_key IN ('tb_token', 'tb_token_created', 'tb_token_last_used');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tb_token', 'tb_token_created', 'tb_token_last_used');

