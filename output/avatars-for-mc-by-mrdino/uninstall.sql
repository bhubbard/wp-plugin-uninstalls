-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc_avatars_skin_source');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mc_username', 'mc_avatar_preset');
DELETE FROM wp_usermeta WHERE meta_key IN ('mc_username', 'mc_avatar_preset');
DELETE FROM wp_termmeta WHERE meta_key IN ('mc_username', 'mc_avatar_preset');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mc_username', 'mc_avatar_preset');

