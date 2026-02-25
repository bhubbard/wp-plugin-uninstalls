-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nm_pr_list', 'nm_setting', '_xiamitoken');
DELETE FROM wp_options WHERE option_name LIKE 'nmpc%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_song%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_song%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_song%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_song%';

