-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sudooauth_option_name', 'sudooauth_option_pwd', 'sudooauth_option_host', 'sudooauth_option_cat', 'sudooauth_option_multicat', 'sudooauth_option_limitpost', 'sudooauth_option_uploadfiles', 'sudooauth_option_activeplugin', 'sudooauth_option_link_number', 'sudooauth_option_nofolow_number');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sudo_access');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sudo_access');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sudo_access');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sudo_access');

