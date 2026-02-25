-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vcyc_active_additional_css', 'vcyc_github_conn', 'vcyc_github_conn_active');
DELETE FROM wp_options WHERE option_name LIKE 'vcyc_commit_path_%';
DELETE FROM wp_options WHERE option_name LIKE 'vcyc_active_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vcyc_active', 'vcyc_commit_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('vcyc_active', 'vcyc_commit_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('vcyc_active', 'vcyc_commit_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vcyc_active', 'vcyc_commit_path');

