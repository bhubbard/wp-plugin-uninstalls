-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synaplan_wp_db_version', 'synaplan_wp_version', 'synaplan_wp_setup_completed', 'synaplan_wp_widget_config', 'synaplan_wp_verification_token', 'synaplan_wp_api_key', 'synaplan_wp_user_id', 'synaplan_wp_wizard_data', 'synaplan_wp_api_status', 'synaplan_wp_widget_preview');
DELETE FROM wp_options WHERE option_name LIKE 'synaplan_wp_%';
DELETE FROM wp_options WHERE option_name LIKE 'synaplan_wizard_data_%';

