-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_trigger_github_last_triggered_timestamp', 'ga_option_token', 'ga_option_username', 'ga_option_repo', 'ga_option_workflow');

