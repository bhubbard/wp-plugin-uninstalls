-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kl_addnewdefaultavatar', 'add_new_default_avatar', 'pre_anda_avatar_default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_local_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_local_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_local_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_local_avatar');

