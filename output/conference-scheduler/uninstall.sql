-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conf_scheduler_workshop_slug', 'conf_scheduler_version', 'conf_scheduler_options', 'wc_am_client_15800', 'wc_am_client_15800_instance', 'conf_scheduler_view_mode', 'conf_scheduler_day_mode', 'conf_scheduler_per_row', 'conf_scheduler_workshop_sort_field', 'conf_scheduler_workshop_sort_order', 'conf_scheduler_day_format', 'conf_scheduler_day_format_custom', 'conf_scheduler_filter_multiple', 'conf_scheduler_hide_empty', 'conf_scheduler_single_workshop_view');
DELETE FROM wp_options WHERE option_name LIKE 'conf_scheduler_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('start', 'start_time', 'end_time', 'length', 'file_attachments_id', 'presenter_bio', 'workshop_id', 'location', 'location_url', 'presenter', 'limit', 'hide_title', 'collapse', 'hide_time', 'group_by_location', 'session');
DELETE FROM wp_usermeta WHERE meta_key IN ('start', 'start_time', 'end_time', 'length', 'file_attachments_id', 'presenter_bio', 'workshop_id', 'location', 'location_url', 'presenter', 'limit', 'hide_title', 'collapse', 'hide_time', 'group_by_location', 'session');
DELETE FROM wp_termmeta WHERE meta_key IN ('start', 'start_time', 'end_time', 'length', 'file_attachments_id', 'presenter_bio', 'workshop_id', 'location', 'location_url', 'presenter', 'limit', 'hide_title', 'collapse', 'hide_time', 'group_by_location', 'session');
DELETE FROM wp_commentmeta WHERE meta_key IN ('start', 'start_time', 'end_time', 'length', 'file_attachments_id', 'presenter_bio', 'workshop_id', 'location', 'location_url', 'presenter', 'limit', 'hide_title', 'collapse', 'hide_time', 'group_by_location', 'session');

