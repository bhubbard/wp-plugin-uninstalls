-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smalk_ai_workspace_key', 'smalk_ai_workspace_name', 'smalk_ai_publisher_activated', 'smalk_ai_project_key', 'smalk_workspace_fetch_success', 'smalk_workspace_fetch_error');

