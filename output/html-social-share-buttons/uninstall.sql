-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zm_shbt_fld');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zm_sh_disable_share');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zm_sh_disable_share');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zm_sh_disable_share');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zm_sh_disable_share');

