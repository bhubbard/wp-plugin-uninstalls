-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booktics_is_installed', 'booktics_available_modules', 'booktics_conflict_check_done', 'booktics_deactivated_plugins_notice');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_ens_config';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', '_team_member_first_name', '_team_member_status', 'order_id', 'booktics_category_services', 'booktics_category_image', '_google_calendar_event_id', 'team_member_id', 'booktics_google_auth_token', 'timezone', 'group_booking', 'booktics_google_auth', 'ens_flow_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', '_team_member_first_name', '_team_member_status', 'order_id', 'booktics_category_services', 'booktics_category_image', '_google_calendar_event_id', 'team_member_id', 'booktics_google_auth_token', 'timezone', 'group_booking', 'booktics_google_auth', 'ens_flow_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', '_team_member_first_name', '_team_member_status', 'order_id', 'booktics_category_services', 'booktics_category_image', '_google_calendar_event_id', 'team_member_id', 'booktics_google_auth_token', 'timezone', 'group_booking', 'booktics_google_auth', 'ens_flow_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', '_team_member_first_name', '_team_member_status', 'order_id', 'booktics_category_services', 'booktics_category_image', '_google_calendar_event_id', 'team_member_id', 'booktics_google_auth_token', 'timezone', 'group_booking', 'booktics_google_auth', 'ens_flow_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notification_flow_flow_config';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notification_flow_flow_config';

