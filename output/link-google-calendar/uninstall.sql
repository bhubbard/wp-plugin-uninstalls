-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link_google_calendar_textarea', 'link_google_calendar_textarea_1', 'link_google_calendar_textarea_2', 'link_google_calendar_textarea_3', 'link_google_calendar_textarea_4', 'link_google_calendar_textarea_5', 'num_of_calendars');
DELETE FROM wp_options WHERE option_name LIKE 'link_google_calendar_textarea_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link_google_calendar_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('link_google_calendar_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('link_google_calendar_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link_google_calendar_ignore_notice');

