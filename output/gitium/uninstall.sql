-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gitium_keypair', 'gitium_webhook_key', 'gitium_versions', 'gitium_remote_tracking_branch', 'gitium_is_status_working', 'gitium_uncommited_changes', 'gitium_git_version', 'gitium_remote_disconnected', 'gitium_menu_bubble');
DELETE FROM wp_options WHERE option_name LIKE 'message_%';

