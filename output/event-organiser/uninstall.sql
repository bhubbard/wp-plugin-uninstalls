-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eo_notice', 'eventorganiser_options', 'polylang', 'eventorganiser_admin_notices', 'eventorganiser_version', 'widget_eo_calendar_widget', 'widget_eo_list_widget', 'eo_widget_agenda', 'eo_widget_calendar', 'eventorganiser_add_ons', 'eo_full_calendar_public', 'eo_full_calendar_admin', 'eo_full_calendar_public_priv', 'eo_is_multi_event_organiser');
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_plm_local_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'eo-event-category_%';
DELETE FROM wp_options WHERE option_name LIKE '%_check';
DELETE FROM wp_options WHERE option_name LIKE '%_check_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eofc_time_format', '_menu_item_url', '_menu_item_menu_item_parent', '_eventorganiser_uid', '_eventorganiser_event_schedule', '_eventorganiser_schedule_start_start', '_eventorganiser_schedule_start_finish', '_eventorganiser_schedule_last_start', '_eventorganiser_schedule_last_finish', '_eventorganiser_schedule_until');
DELETE FROM wp_usermeta WHERE meta_key IN ('eofc_time_format', '_menu_item_url', '_menu_item_menu_item_parent', '_eventorganiser_uid', '_eventorganiser_event_schedule', '_eventorganiser_schedule_start_start', '_eventorganiser_schedule_start_finish', '_eventorganiser_schedule_last_start', '_eventorganiser_schedule_last_finish', '_eventorganiser_schedule_until');
DELETE FROM wp_termmeta WHERE meta_key IN ('eofc_time_format', '_menu_item_url', '_menu_item_menu_item_parent', '_eventorganiser_uid', '_eventorganiser_event_schedule', '_eventorganiser_schedule_start_start', '_eventorganiser_schedule_start_finish', '_eventorganiser_schedule_last_start', '_eventorganiser_schedule_last_finish', '_eventorganiser_schedule_until');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eofc_time_format', '_menu_item_url', '_menu_item_menu_item_parent', '_eventorganiser_uid', '_eventorganiser_event_schedule', '_eventorganiser_schedule_start_start', '_eventorganiser_schedule_start_finish', '_eventorganiser_schedule_last_start', '_eventorganiser_schedule_last_finish', '_eventorganiser_schedule_until');

