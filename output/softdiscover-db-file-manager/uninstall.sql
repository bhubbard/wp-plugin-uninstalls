-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbflm_fmanager_roles', 'flmbkpbuild_version', 'flmbkp_opt_theme', 'flmbkp_opt_lang');

