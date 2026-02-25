-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgd_repo_setting', 'mgd_do_activation_redirect', 'mgd_cron_setting', 'mgd_glob_setting', 'mgd_resolver_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mgd_last_updated', 'mgd_local_last_commit');
DELETE FROM wp_usermeta WHERE meta_key IN ('mgd_last_updated', 'mgd_local_last_commit');
DELETE FROM wp_termmeta WHERE meta_key IN ('mgd_last_updated', 'mgd_local_last_commit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mgd_last_updated', 'mgd_local_last_commit');

