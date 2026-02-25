-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blpatrol_check_frequency', 'blpatrol_isindexed_enabled', 'blpatrol_isindexed_api_key', 'blpatrol_isindexed_check_on_cron', 'blpatrol_indexmenow_enabled', 'blpatrol_indexmenow_api_key', 'blpatrol_gsc_client_id', 'blpatrol_gsc_client_secret', 'blpatrol_last_global_check', 'blpatrol_last_indexation_check', 'blpatrol_currency', 'blpatrol_indexmenow_auto_index', 'blpatrol_isindexed_project_id', 'blpatrol_db_version', 'blpatrol_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'blpatrol_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blpatrol_screen_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('blpatrol_screen_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('blpatrol_screen_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blpatrol_screen_options');

