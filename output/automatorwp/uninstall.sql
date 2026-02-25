-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'automatorwp_hide_review_notice', 'automatorwp_install_date', 'automatorwp_settings', 'automatorwp_version', 'automatorwp_completed_upgrades', 'automatorwp_aweber_auth', 'bluesky_refresh_token', 'bluesky_did', 'simplefavorites_display', 'items_per_page', 'update_plugins', 'automatorwp_plugins_api', 'automatorwp_integrations_api', 'automatorwp_user_metas_query', 'automatorwp_post_metas_query', 'automatorwp_zoom_meetings');
DELETE FROM wp_options WHERE option_name LIKE 'automatorwp_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'automatorwp_redirect_url_%';
DELETE FROM wp_options WHERE option_name LIKE '%_auth';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'learndash_course_groups_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpas_assignee', 'wafp_is_affiliate', 'event_id', '_sfwd-course_progress', '_sfwd-quizzes', '_sfwd-quiz', 'mec_date', 'mec_location_id', 'mec_organizer_id', 'mec_cost', 'mec_event_id', 'mec_attendees', '_is_tutor_student', '_tutor_enrolled_by_product_id', 'customer_email', 'billing_country', 'shipping_country', '_access_method', '_order_id', '_automatorwp_last_visit', '_company_name', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpas_assignee', 'wafp_is_affiliate', 'event_id', '_sfwd-course_progress', '_sfwd-quizzes', '_sfwd-quiz', 'mec_date', 'mec_location_id', 'mec_organizer_id', 'mec_cost', 'mec_event_id', 'mec_attendees', '_is_tutor_student', '_tutor_enrolled_by_product_id', 'customer_email', 'billing_country', 'shipping_country', '_access_method', '_order_id', '_automatorwp_last_visit', '_company_name', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpas_assignee', 'wafp_is_affiliate', 'event_id', '_sfwd-course_progress', '_sfwd-quizzes', '_sfwd-quiz', 'mec_date', 'mec_location_id', 'mec_organizer_id', 'mec_cost', 'mec_event_id', 'mec_attendees', '_is_tutor_student', '_tutor_enrolled_by_product_id', 'customer_email', 'billing_country', 'shipping_country', '_access_method', '_order_id', '_automatorwp_last_visit', '_company_name', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpas_assignee', 'wafp_is_affiliate', 'event_id', '_sfwd-course_progress', '_sfwd-quizzes', '_sfwd-quiz', 'mec_date', 'mec_location_id', 'mec_organizer_id', 'mec_cost', 'mec_event_id', 'mec_attendees', '_is_tutor_student', '_tutor_enrolled_by_product_id', 'customer_email', 'billing_country', 'shipping_country', '_access_method', '_order_id', '_automatorwp_last_visit', '_company_name', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_registrant_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_registrant_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_registrant_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_registrant_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_join_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_join_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_join_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_join_url';

