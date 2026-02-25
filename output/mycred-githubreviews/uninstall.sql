-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('github_app_client_id', 'github_app_client_secret', 'github_connect_redirect_url', 'github_hook_url', 'github_account_info', 'github_account_selected_repositories', 'github_repositories', 'github_repositories_hooks', 'myCred_github_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('github_user_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('github_user_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('github_user_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('github_user_name');

