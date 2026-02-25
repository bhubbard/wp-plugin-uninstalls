-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecwp_event_date_start', 'ecwp_event_date_end', 'ecwp_venue_id', 'ecwp_event_text_bg');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecwp_event_date_start', 'ecwp_event_date_end', 'ecwp_venue_id', 'ecwp_event_text_bg');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecwp_event_date_start', 'ecwp_event_date_end', 'ecwp_venue_id', 'ecwp_event_text_bg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecwp_event_date_start', 'ecwp_event_date_end', 'ecwp_venue_id', 'ecwp_event_text_bg');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%venue_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%venue_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%venue_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%venue_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%text_phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%text_phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%text_phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%text_phone';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_website';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_website';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_website';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_website';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%organizer_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%organizer_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%organizer_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%organizer_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_end';

