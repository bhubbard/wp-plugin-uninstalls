-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sac_logout_text', 'sac_locked_text', 'sac_hide_menus');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sac_locked');
DELETE FROM wp_usermeta WHERE meta_key IN ('sac_locked');
DELETE FROM wp_termmeta WHERE meta_key IN ('sac_locked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sac_locked');

