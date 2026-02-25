-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('U_S_C', 'bainternetNews');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('U_S_C_roles', 'U_S_C_users', 'U_S_C_options', 'U_S_C_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('U_S_C_roles', 'U_S_C_users', 'U_S_C_options', 'U_S_C_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('U_S_C_roles', 'U_S_C_users', 'U_S_C_options', 'U_S_C_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('U_S_C_roles', 'U_S_C_users', 'U_S_C_options', 'U_S_C_message');

