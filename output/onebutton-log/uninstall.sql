-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onebutton_ai_mode', 'onebutton_last_error', 'onebutton_bot_visits', 'onebutton_auto_cleanup', 'onebutton_log_file_path');

