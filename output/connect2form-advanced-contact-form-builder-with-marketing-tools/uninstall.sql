-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('connect2form_data_settings', 'connect2form_activated', 'connect2form_version', 'connect2form_appearance_settings', 'connect2form_performance_settings', 'connect2form_antispam_settings', 'connect2form_recaptcha_settings', 'connect2form_security_settings', 'wordpress_api_key', 'connect2form_maintenance_settings', 'connect2form_last_queue_process', 'connect2form_last_frontend_queue_process');

