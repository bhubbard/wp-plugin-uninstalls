-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saem_default_settings_template', 'saem_list_settings_templates', 'saem_permalinks', 'saem_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_reminder', 'timetable', 'person_title', 'person_first_name', 'person_last_name', 'person_photo', 'address', 'phone', 'email', 'social', 'job_position', 'workflow', 'images', '_wp_attachment_image_alt', 'color', 'start_date_unix', 'end_date_unix', 'location', 'coordinates', 'services', 'employees', 'rrule', 'is_advanced_rrule', 'exdate', 'featured', 'cancelled', 'paid', 'uid', 'timezone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_reminder', 'timetable', 'person_title', 'person_first_name', 'person_last_name', 'person_photo', 'address', 'phone', 'email', 'social', 'job_position', 'workflow', 'images', '_wp_attachment_image_alt', 'color', 'start_date_unix', 'end_date_unix', 'location', 'coordinates', 'services', 'employees', 'rrule', 'is_advanced_rrule', 'exdate', 'featured', 'cancelled', 'paid', 'uid', 'timezone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_reminder', 'timetable', 'person_title', 'person_first_name', 'person_last_name', 'person_photo', 'address', 'phone', 'email', 'social', 'job_position', 'workflow', 'images', '_wp_attachment_image_alt', 'color', 'start_date_unix', 'end_date_unix', 'location', 'coordinates', 'services', 'employees', 'rrule', 'is_advanced_rrule', 'exdate', 'featured', 'cancelled', 'paid', 'uid', 'timezone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_reminder', 'timetable', 'person_title', 'person_first_name', 'person_last_name', 'person_photo', 'address', 'phone', 'email', 'social', 'job_position', 'workflow', 'images', '_wp_attachment_image_alt', 'color', 'start_date_unix', 'end_date_unix', 'location', 'coordinates', 'services', 'employees', 'rrule', 'is_advanced_rrule', 'exdate', 'featured', 'cancelled', 'paid', 'uid', 'timezone');

