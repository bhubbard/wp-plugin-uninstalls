-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_calendar_host', 'hp_calendar_manage', 'hp_calendar_language', 'hp_calendar_use_default_style', 'hp_calendar_api_key', 'hp_calendar_callback', 'hp_calendar_success_callback', 'hp_calendar_homepage', 'hp_calendar_logo', 'hp_calendar_company');

