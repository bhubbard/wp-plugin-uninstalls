-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suggester_tool_counter', 'suggester_monthly_actions', 'suggester_monthly_reset_date', 'suggester_copy_migration_done', 'suggester_arabic_loaded', 'suggester_global_settings', 'suggester_version', 'suggester_daily_count', 'suggester_weekly_count', 'suggester_monthly_count', 'suggester_yearly_count', 'suggester_last_reset_dates', 'suggester_admin_message', 'suggester_last_key_index_global', 'suggester_key_error_global_gemini_0', 'suggester_key_error_global_openrouter_1', 'suggester_key_error_global_openrouter_2');
DELETE FROM wp_options WHERE option_name LIKE 'suggester_tool_stats_%';
DELETE FROM wp_options WHERE option_name LIKE 'suggester_tool_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'suggester_key_stats_%';
DELETE FROM wp_options WHERE option_name LIKE 'suggester_last_key_index_%';
DELETE FROM wp_options WHERE option_name LIKE '%_gemini_0';
DELETE FROM wp_options WHERE option_name LIKE '%_openrouter_1';
DELETE FROM wp_options WHERE option_name LIKE '%_openrouter_2';

