-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__ina_overrideby_multisite_setting', '__ina_logout_time', '__ina_logout_message', '__ina_warn_message', '__ina_after_logout_message', '__ina_roles', '__ina_enable_timeout_multiusers', '__ina_multiusers_settings', '__ina_general_settings');

