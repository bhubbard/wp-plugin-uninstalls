-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartcat_translation_connector_updated', 'smartcat_cron_handler');
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_workflow_stages';
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_vendor_id';
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_account_name';
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_api_project_id';
DELETE FROM wp_options WHERE option_name LIKE '%statistic_queue_active';
DELETE FROM wp_options WHERE option_name LIKE '%callback_authorisation_token';
DELETE FROM wp_options WHERE option_name LIKE '%smartcat_debug_mode';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sc_errors_per_page', 'sc_events_per_page', 'sc_profiles_per_page', 'sc_dashboard_per_page', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sc_errors_per_page', 'sc_events_per_page', 'sc_profiles_per_page', 'sc_dashboard_per_page', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sc_errors_per_page', 'sc_events_per_page', 'sc_profiles_per_page', 'sc_dashboard_per_page', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sc_errors_per_page', 'sc_events_per_page', 'sc_profiles_per_page', 'sc_dashboard_per_page', '_thumbnail_id');

