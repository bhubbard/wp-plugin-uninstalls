-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pxls_wprm_installed', 'pxls_wprm_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprm_user_caps');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprm_user_caps');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprm_user_caps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprm_user_caps');

