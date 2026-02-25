-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtpsw_options', 'wtpsw_plugin_version', 'wpos_anylc_redirect', 'wpos_anylc_site_uid', 'wtpsw_install_notice', 'espbw_plugins_data');
DELETE FROM wp_options WHERE option_name LIKE 'wpos_anylc_optin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%views';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%views';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%views';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%views';

