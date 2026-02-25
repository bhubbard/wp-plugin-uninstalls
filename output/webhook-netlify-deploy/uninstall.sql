-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webhook_address', 'netlify_user_agent', 'netlify_api_key', 'netlify_site_id', 'enable_scheduled_builds', 'select_schedule_builds', 'select_time_build');

