-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('repo_readme', 'repo_url', 'repo_owner', 'repo_name', 'repo_full_name', 'repo_description', 'repo_language', 'repo_stars', 'repo_forks', 'repo_watchers', 'repo_created_at', 'repo_updated_at', 'repo_pushed_at', 'repo_topics', 'repo_default_branch', 'sync_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('repo_readme', 'repo_url', 'repo_owner', 'repo_name', 'repo_full_name', 'repo_description', 'repo_language', 'repo_stars', 'repo_forks', 'repo_watchers', 'repo_created_at', 'repo_updated_at', 'repo_pushed_at', 'repo_topics', 'repo_default_branch', 'sync_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('repo_readme', 'repo_url', 'repo_owner', 'repo_name', 'repo_full_name', 'repo_description', 'repo_language', 'repo_stars', 'repo_forks', 'repo_watchers', 'repo_created_at', 'repo_updated_at', 'repo_pushed_at', 'repo_topics', 'repo_default_branch', 'sync_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('repo_readme', 'repo_url', 'repo_owner', 'repo_name', 'repo_full_name', 'repo_description', 'repo_language', 'repo_stars', 'repo_forks', 'repo_watchers', 'repo_created_at', 'repo_updated_at', 'repo_pushed_at', 'repo_topics', 'repo_default_branch', 'sync_status');

