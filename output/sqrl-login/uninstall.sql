-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sqrl_redirect_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sqrl_idk', 'sqrl_hardlock', 'sqrl_disable_user', 'sqrl_sqrlonly', 'sqrl_suk', 'sqrl_vuk');
DELETE FROM wp_usermeta WHERE meta_key IN ('sqrl_idk', 'sqrl_hardlock', 'sqrl_disable_user', 'sqrl_sqrlonly', 'sqrl_suk', 'sqrl_vuk');
DELETE FROM wp_termmeta WHERE meta_key IN ('sqrl_idk', 'sqrl_hardlock', 'sqrl_disable_user', 'sqrl_sqrlonly', 'sqrl_suk', 'sqrl_vuk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sqrl_idk', 'sqrl_hardlock', 'sqrl_disable_user', 'sqrl_sqrlonly', 'sqrl_suk', 'sqrl_vuk');

