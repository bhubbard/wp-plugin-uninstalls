-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sympose', 'sidebars_widgets', 'widget_sympose_session_information', 'sympose_extensions', 'sympose_quick_start_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sympose_organisation_people', '_sympose_linked_organisation', '_sympose_event_date', '_sympose_session_people', '_sympose_social_media', '_sympose_description', '_sympose_image_id', '_sympose_schedule_page_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sympose_organisation_people', '_sympose_linked_organisation', '_sympose_event_date', '_sympose_session_people', '_sympose_social_media', '_sympose_description', '_sympose_image_id', '_sympose_schedule_page_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sympose_organisation_people', '_sympose_linked_organisation', '_sympose_event_date', '_sympose_session_people', '_sympose_social_media', '_sympose_description', '_sympose_image_id', '_sympose_schedule_page_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sympose_organisation_people', '_sympose_linked_organisation', '_sympose_event_date', '_sympose_session_people', '_sympose_social_media', '_sympose_description', '_sympose_image_id', '_sympose_schedule_page_id', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%schedule_page_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%schedule_page_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%schedule_page_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%schedule_page_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%session_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%session_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%session_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%session_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%session_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%session_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%session_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%session_end';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%session_people';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%session_people';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%session_people';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%session_people';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%session_organisations';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%session_organisations';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%session_organisations';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%session_organisations';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%saved_sessions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%saved_sessions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%saved_sessions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%saved_sessions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%schedule_people_format';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%schedule_people_format';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%schedule_people_format';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%schedule_people_format';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%schedule_organisations_format';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%schedule_organisations_format';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%schedule_organisations_format';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%schedule_organisations_format';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%session_static';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%session_static';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%session_static';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%session_static';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_sympose_session_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_sympose_session_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_sympose_session_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sympose_session_%';

