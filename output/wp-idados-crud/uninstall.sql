-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idados_user_grupo', 'pessoa_by_user', 'role');
DELETE FROM wp_usermeta WHERE meta_key IN ('idados_user_grupo', 'pessoa_by_user', 'role');
DELETE FROM wp_termmeta WHERE meta_key IN ('idados_user_grupo', 'pessoa_by_user', 'role');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idados_user_grupo', 'pessoa_by_user', 'role');

