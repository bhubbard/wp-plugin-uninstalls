-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('docket_sso_secret_key', 'dwp_install_id', 'docket_wp_options', 'docketwp_dismissed_wp_pointer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('docket_sso_disable', 'docket_premium_user', 'docket_sso_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('docket_sso_disable', 'docket_premium_user', 'docket_sso_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('docket_sso_disable', 'docket_premium_user', 'docket_sso_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('docket_sso_disable', 'docket_premium_user', 'docket_sso_data');

