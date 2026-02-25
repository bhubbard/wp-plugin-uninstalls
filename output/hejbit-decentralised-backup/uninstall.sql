-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hejbit_login_dlwcloud', 'hejbit_pass_dlwcloud', 'hejbit_url_dlwcloud', 'hejbit_logs_retention', 'hejbit_email_dlwcloud', 'hejbit_folder_dlwcloud', 'hejbit_frequency_dlwcloud', 'hejbit_day_dlwcloud', 'hejbit_hour_dlwcloud', 'hejbit_db_only_dlwcloud', 'db_only_dlwcloud', 'update_plugins', 'update_themes');

