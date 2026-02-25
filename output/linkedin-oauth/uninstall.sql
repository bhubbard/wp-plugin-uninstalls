-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkedin_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('linkedin_access_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('linkedin_access_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('linkedin_access_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('linkedin_access_token');

