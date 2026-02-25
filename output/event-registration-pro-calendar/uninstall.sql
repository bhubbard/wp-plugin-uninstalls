-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erp_event_display_settings', 'event_core_plugin_name', 'erp_event_general_settings', 'admin_popup', 'erp_event_handling', 'erp_event_registration_settings', 'erp_event_image_settings', 'event_cart_page_id', 'event_checkout_page_id', 'event_thankyou_page_id', 'event_list_page_id', 'calendar_page_id', 'event_cat_acc_page_id', 'event_cat_page_id', 'event_print_page_id', 'event_rss_page_id', 'mailing_list_admin_mail', 'ticket_addon_plg_license', 'offline_payment_plg', 'event_discount_plg', 'event_discount_plg_license', 'ticket_addon_plg', 'erp_event_intro_text');
DELETE FROM wp_options WHERE option_name LIKE 'erp_%';
DELETE FROM wp_options WHERE option_name LIKE 'erp_event_category_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('erp_email_template_subject', 'erp_email_template_registrant_confirmation', 'erp_email_template_static', 'erp_email_template_selection', 'erp_email_template_email_body', '_wp_page_template', 'regform_fields_hid_count_meta_fields', 'post_id', 'erp_event_thumbnail_image', 'erp_event_date', 'erp_event_enddate', 'erp_event_time', 'erp_event_endtime', 'erp_event_location', 'erp_event_category', 'erp_event_max_attendance', 'erp_event_organizer_phone', 'erp_event_organizer_website', 'erp_event_location_manager_location_url', 'erp_event_location_manager_city_state', 'email', 'regform_fields_field_title_1', 'regform_fields_field_identification_1', 'regform_fields_field_type_1', 'regform_fields_field_ordering_1', 'regform_fields_validation_rule_1', 'regform_fields_field_title_2', 'regform_fields_field_identification_2', 'regform_fields_field_type_2', 'regform_fields_field_ordering_2', 'regform_fields_validation_rule_2', 'regform_fields_field_title_3', 'regform_fields_field_identification_3', 'regform_fields_field_type_3', 'regform_fields_field_ordering_3', 'regform_fields_validation_rule_3', 'initial_field_count', 'regform_fields_hid_current_count_meta_fields', 'regform_fields_hid_meta_fields', 'erp_event_select_registration_form', 'erp_event_allow_group_registration', 'erp_event_force_group_registration', 'form_id', 'accepted', 'pending', 'paymentstatus', 'admin_note_register_id', 'attended', 'chkgroupregistration', 'event_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('erp_email_template_subject', 'erp_email_template_registrant_confirmation', 'erp_email_template_static', 'erp_email_template_selection', 'erp_email_template_email_body', '_wp_page_template', 'regform_fields_hid_count_meta_fields', 'post_id', 'erp_event_thumbnail_image', 'erp_event_date', 'erp_event_enddate', 'erp_event_time', 'erp_event_endtime', 'erp_event_location', 'erp_event_category', 'erp_event_max_attendance', 'erp_event_organizer_phone', 'erp_event_organizer_website', 'erp_event_location_manager_location_url', 'erp_event_location_manager_city_state', 'email', 'regform_fields_field_title_1', 'regform_fields_field_identification_1', 'regform_fields_field_type_1', 'regform_fields_field_ordering_1', 'regform_fields_validation_rule_1', 'regform_fields_field_title_2', 'regform_fields_field_identification_2', 'regform_fields_field_type_2', 'regform_fields_field_ordering_2', 'regform_fields_validation_rule_2', 'regform_fields_field_title_3', 'regform_fields_field_identification_3', 'regform_fields_field_type_3', 'regform_fields_field_ordering_3', 'regform_fields_validation_rule_3', 'initial_field_count', 'regform_fields_hid_current_count_meta_fields', 'regform_fields_hid_meta_fields', 'erp_event_select_registration_form', 'erp_event_allow_group_registration', 'erp_event_force_group_registration', 'form_id', 'accepted', 'pending', 'paymentstatus', 'admin_note_register_id', 'attended', 'chkgroupregistration', 'event_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('erp_email_template_subject', 'erp_email_template_registrant_confirmation', 'erp_email_template_static', 'erp_email_template_selection', 'erp_email_template_email_body', '_wp_page_template', 'regform_fields_hid_count_meta_fields', 'post_id', 'erp_event_thumbnail_image', 'erp_event_date', 'erp_event_enddate', 'erp_event_time', 'erp_event_endtime', 'erp_event_location', 'erp_event_category', 'erp_event_max_attendance', 'erp_event_organizer_phone', 'erp_event_organizer_website', 'erp_event_location_manager_location_url', 'erp_event_location_manager_city_state', 'email', 'regform_fields_field_title_1', 'regform_fields_field_identification_1', 'regform_fields_field_type_1', 'regform_fields_field_ordering_1', 'regform_fields_validation_rule_1', 'regform_fields_field_title_2', 'regform_fields_field_identification_2', 'regform_fields_field_type_2', 'regform_fields_field_ordering_2', 'regform_fields_validation_rule_2', 'regform_fields_field_title_3', 'regform_fields_field_identification_3', 'regform_fields_field_type_3', 'regform_fields_field_ordering_3', 'regform_fields_validation_rule_3', 'initial_field_count', 'regform_fields_hid_current_count_meta_fields', 'regform_fields_hid_meta_fields', 'erp_event_select_registration_form', 'erp_event_allow_group_registration', 'erp_event_force_group_registration', 'form_id', 'accepted', 'pending', 'paymentstatus', 'admin_note_register_id', 'attended', 'chkgroupregistration', 'event_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('erp_email_template_subject', 'erp_email_template_registrant_confirmation', 'erp_email_template_static', 'erp_email_template_selection', 'erp_email_template_email_body', '_wp_page_template', 'regform_fields_hid_count_meta_fields', 'post_id', 'erp_event_thumbnail_image', 'erp_event_date', 'erp_event_enddate', 'erp_event_time', 'erp_event_endtime', 'erp_event_location', 'erp_event_category', 'erp_event_max_attendance', 'erp_event_organizer_phone', 'erp_event_organizer_website', 'erp_event_location_manager_location_url', 'erp_event_location_manager_city_state', 'email', 'regform_fields_field_title_1', 'regform_fields_field_identification_1', 'regform_fields_field_type_1', 'regform_fields_field_ordering_1', 'regform_fields_validation_rule_1', 'regform_fields_field_title_2', 'regform_fields_field_identification_2', 'regform_fields_field_type_2', 'regform_fields_field_ordering_2', 'regform_fields_validation_rule_2', 'regform_fields_field_title_3', 'regform_fields_field_identification_3', 'regform_fields_field_type_3', 'regform_fields_field_ordering_3', 'regform_fields_validation_rule_3', 'initial_field_count', 'regform_fields_hid_current_count_meta_fields', 'regform_fields_hid_meta_fields', 'erp_event_select_registration_form', 'erp_event_allow_group_registration', 'erp_event_force_group_registration', 'form_id', 'accepted', 'pending', 'paymentstatus', 'admin_note_register_id', 'attended', 'chkgroupregistration', 'event_name');
DELETE FROM wp_postmeta WHERE meta_key IN ('product_qty', 'ticket_id', 'selPaymentOption', 'agrement', 'waiting_list', 'event_price', 'erp_event_event_organizer_notification_emails', 'erp_event_cc_confirmation_emails_to', 'post_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_qty', 'ticket_id', 'selPaymentOption', 'agrement', 'waiting_list', 'event_price', 'erp_event_event_organizer_notification_emails', 'erp_event_cc_confirmation_emails_to', 'post_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_qty', 'ticket_id', 'selPaymentOption', 'agrement', 'waiting_list', 'event_price', 'erp_event_event_organizer_notification_emails', 'erp_event_cc_confirmation_emails_to', 'post_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_qty', 'ticket_id', 'selPaymentOption', 'agrement', 'waiting_list', 'event_price', 'erp_event_event_organizer_notification_emails', 'erp_event_cc_confirmation_emails_to', 'post_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_field_title_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_field_title_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_field_title_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_field_title_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_field_identification_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_field_identification_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_field_identification_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_field_identification_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'erp_event_ticket_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'erp_event_ticket_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'erp_event_ticket_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'erp_event_ticket_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'erp_event_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'erp_event_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'erp_event_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'erp_event_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_field_ordering_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_field_ordering_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_field_ordering_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_field_ordering_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_field_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_field_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_field_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_field_type_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_conditional_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_conditional_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_conditional_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_conditional_field_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_validation_rule_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_validation_rule_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_validation_rule_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_validation_rule_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_default_field_value_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_default_field_value_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_default_field_value_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_default_field_value_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_additional_attributes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_additional_attributes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_additional_attributes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_additional_attributes_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'regform_fields_field_description_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'regform_fields_field_description_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'regform_fields_field_description_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'regform_fields_field_description_%';

