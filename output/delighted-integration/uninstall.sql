-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_db_version', 'delighted_api_key', 'survey_time_period', 'survey_first_time_customer', 'survey_backfill_customer');

