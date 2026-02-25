-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aac_plugin_version', 'aac_commenters_list', 'aac_usernames_list', 'aac_roles_list', 'userid_list', 'commenters_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('akismet_result', 'akismet_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('akismet_result', 'akismet_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('akismet_result', 'akismet_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('akismet_result', 'akismet_error');

