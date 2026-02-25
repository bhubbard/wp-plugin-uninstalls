#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adfoin_general_settings_utm'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'adfoin_credentials'
wp option delete 'adfoin_general_settings_job_queue'
wp option delete 'adfoin_review'
wp option delete 'adfoin_general_settings_platforms'
wp option delete 'adfoin_general_settings_log'
wp option delete 'adfoin_general_settings_error_email'
wp option delete 'adfoin_general_settings_st'
wp option delete 'adfoin_wc_checkout_fields'
wp option delete 'gutena_form_ids'
wp option delete 'mystickyelements-contact-form'
wp option delete 'adfoin_siteorigincontact_instances'
wp option delete 'wbk_timezone'
wp option delete 'wbk_email_landing'
wp option delete 'adfoin_activecampaign_api_key'
wp option delete 'adfoin_activecampaign_url'
wp option delete 'adfoin_agilecrm_api_key'
wp option delete 'adfoin_agilecrm_email'
wp option delete 'adfoin_agilecrm_subdomain'
wp option delete 'adfoin_airtable_api_token'
wp option delete 'cp_cpappb_storeip'
wp option delete 'adfoin_asana_access_token'
wp option delete 'adfoin_autopilot_api_key'
wp option delete 'adfoin_autopilotnew_api_key'
wp option delete 'adfoin_autopilotnew_data_center'
wp option delete 'adfoin_aweber_keys'
wp option delete 'adfoin_beehiiv_api_key'
wp option delete 'adfoin_benchmark_api_key'
wp option delete 'adfoin_bigin_keys'
wp option delete 'adfoin_bigmarker_api_key'
wp option delete 'adfoin_bigmarker_api_secret'
wp option delete 'adfoin_bombbomb_keys'
wp option delete 'adfoin_braze_rest_api_key'
wp option delete 'adfoin_braze_rest_endpoint'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adfoin_cakemail_token_%'"
wp option delete 'adfoin_campaignmonitor_api_token'
wp option delete 'adfoin_capsulecrm_api_token'
wp option delete 'adfoin_cleverreach_keys'
wp option delete 'adfoin_clickup_api_token'
wp option delete 'adfoin_clinchpad_api_token'
wp option delete 'adfoin_close_api_token'
wp option delete 'adfoin_companyhub_api_key'
wp option delete 'adfoin_companyhub_subdomain'
wp option delete 'adfoin_constantcontact_keys'
wp option delete 'adfoin_convertkit_api_key'
wp option delete 'adfoin_copper_user_email'
wp option delete 'adfoin_copper_access_token'
wp option delete 'adfoin_curated_publication_domain'
wp option delete 'adfoin_curated_api_key'
wp option delete 'adfoin_demio_api_key'
wp option delete 'adfoin_demio_api_secret'
wp option delete 'adfoin_directiq_api_key'
wp option delete 'adfoin_directiq_api_secret'
wp option delete 'adfoin_dotdigital_api_user'
wp option delete 'adfoin_dotdigital_api_pass'
wp option delete 'adfoin_dotdigital_api_region'
wp option delete 'adfoin_drip_api_token'
wp option delete 'adfoin_easysendy_api_key'
wp option delete 'adfoin_elasticemail_api_key'
wp option delete 'adfoin_elasticemail_public_accountid'
wp option delete 'adfoin_emailoctopus_api_key'
wp option delete 'adfoin_encharge_api_key'
wp option delete 'adfoin_engagebay_api_key'
wp option delete 'adfoin_everwebinar_api_token'
wp option delete 'adfoin_flowlu_api_token'
wp option delete 'adfoin_flowlu_subdomain'
wp option delete 'adfoin_freshsales_api_key'
wp option delete 'adfoin_freshsales_subdomain'
wp option delete 'adfoin_getresponse_api_key'
wp option delete 'adfoin_googlecalendar_keys'
wp option delete 'adfoin_googledrive_keys'
wp option delete 'adfoin_googlesheets_keys'
wp option delete 'adfoin_googletasks_keys'
wp option delete 'adfoin_gotowebinar_keys'
wp option delete 'adfoin_hubspot_access_token'
wp option delete 'adfoin_hubspot_api_token'
wp option delete 'adfoin_insightly_api_key'
wp option delete 'adfoin_insightly_api_url'
wp option delete 'adfoin_jumplead_api_key'
wp option delete 'adfoin_kartra_api_key'
wp option delete 'adfoin_kartra_api_password'
wp option delete 'adfoin_keap_api_key'
wp option delete 'adfoin_kit_api_key'
wp option delete 'adfoin_klaviyo_oauth_client_id'
wp option delete 'adfoin_klaviyo_api_token'
wp option delete 'adfoin_lemlist_api_key'
wp option delete 'adfoin_liondesk_keys'
wp option delete 'adfoin_livestorm_api_token'
wp option delete 'adfoin_mailbluster_api_token'
wp option delete 'adfoin_mailchimp_api_key'
wp option delete 'adfoin_maileon_api_key'
wp option delete 'adfoin_mailercloud_api_key'
wp option delete 'adfoin_mailerlite_api_key'
wp option delete 'adfoin_mailerlite2_api_key'
wp option delete 'adfoin_mailersend_api_token'
wp option delete 'adfoin_mailgun_api_key'
wp option delete 'adfoin_mailify_account_number'
wp option delete 'adfoin_mailify_key'
wp option delete 'adfoin_mailjet_api_key'
wp option delete 'adfoin_mailjet_secret_key'
wp option delete 'adfoin_mailup_keys'
wp option delete 'adfoin_mailwizz_api_url'
wp option delete 'adfoin_mailwizz_api_key'
wp option delete 'adfoin_maropost_host'
wp option delete 'adfoin_maropost_account_id'
wp option delete 'adfoin_maropost_api_key'
wp option delete 'adfoin_mautic_api_key'
wp option delete 'adfoin_moneybird_keys'
wp option delete 'adfoin_moosend_api_token'
wp option delete 'adfoin_nimble_api_key'
wp option delete 'adfoin_nutshell_keys'
wp option delete 'adfoin_omnisend_api_token'
wp option delete 'adfoin_onehash_company'
wp option delete 'adfoin_onehash_api_key'
wp option delete 'adfoin_onehash_api_secret'
wp option delete 'adfoin_ontraport_app_id'
wp option delete 'adfoin_ontraport_api_key'
wp option delete 'adfoin_pabbly_api_key'
wp option delete 'adfoin_pipedrive_api_token'
wp option delete 'adfoin_pushover_user_key'
wp option delete 'adfoin_pushover_api_token'
wp option delete 'adfoin_ragic_api_token'
wp option delete 'adfoin_ragic_base_url'
wp option delete 'adfoin_revue_api_key'
wp option delete 'adfoin_robly_api_id'
wp option delete 'adfoin_robly_api_key'
wp option delete 'adfoin_salesflare_api_token'
wp option delete 'adfoin_salesforce_keys'
wp option delete 'adfoin_salesforcefieldservice_keys'
wp option delete 'adfoin_salesrocks_username'
wp option delete 'adfoin_salesrocks_password'
wp option delete 'adfoin_sapmarketingcloud_base_url'
wp option delete 'adfoin_sapmarketingcloud_oauth_url'
wp option delete 'adfoin_sapmarketingcloud_client_id'
wp option delete 'adfoin_sapmarketingcloud_client_secret'
wp option delete 'adfoin_sapsalescloud_base_url'
wp option delete 'adfoin_sapsalescloud_oauth_url'
wp option delete 'adfoin_sapsalescloud_client_id'
wp option delete 'adfoin_sapsalescloud_client_secret'
wp option delete 'adfoin_selzy_api_key'
wp option delete 'adfoin_sendfox_api_key'
wp option delete 'adfoin_sendgrid_api_key'
wp option delete 'adfoin_sendinblue_api_key'
wp option delete 'adfoin_sendlane_api_key'
wp option delete 'adfoin_sendlane_api_secret'
wp option delete 'adfoin_sendlane_subdomain'
wp option delete 'adfoin_sendpulse_id'
wp option delete 'adfoin_sendpulse_secret'
wp option delete 'adfoin_sendx_team_id'
wp option delete 'adfoin_sendx_api_key'
wp option delete 'adfoin_sendy_api_key'
wp option delete 'adfoin_sendy_url'
wp option delete 'adfoin_sharpspring_account_id'
wp option delete 'adfoin_sharpspring_secret_key'
wp option delete 'adfoin_smartsheet_api_token'
wp option delete 'adfoin_trello_api_token'
wp option delete 'adfoin_twilio_account_sid'
wp option delete 'adfoin_twilio_auth_token'
wp option delete 'adfoin_verticalresponse_keys'
wp option delete 'adfoin_vtiger_baseurl'
wp option delete 'adfoin_vtiger_username'
wp option delete 'adfoin_vtiger_access_key'
wp option delete 'adfoin_wealthbox_api_token'
wp option delete 'adfoin_webinarjam_api_token'
wp option delete 'adfoin_woodpecker_api_key'
wp option delete 'adfoin_zohocampaigns_keys'
wp option delete 'adfoin_zohocrm_keys'
wp option delete 'adfoin_zohodesk_keys'
wp option delete 'adfoin_zohopeople_keys'
wp option delete 'adfoin_zohorecruit_keys'
wp option delete 'adfoin_zohosheet_keys'
wp option delete 'adfoin_zoomwebinar_keys'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'adfoin_sapmarketingcloud_access_token'
wp transient delete 'adfoin_sapsalescloud_access_token'
wp transient delete 'sendpulse_access_token'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_students'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_students'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_students'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_students'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_curriculum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_curriculum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_curriculum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_curriculum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_benefits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_benefits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_benefits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_benefits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_material_included'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_material_included'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_material_included'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_material_included'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_assignee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_footer_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_footer_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_footer_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_footer_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_header_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_header_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_header_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_header_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_modal_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_modal_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_modal_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_modal_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ivole_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attendee_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attendee_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attendee_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attendee_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attendee_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attendee_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attendee_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attendee_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'industry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'industry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'industry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'industry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaliforms_field_components'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lp_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lp_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lp_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lp_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_total_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_total_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_total_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_total_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_correct_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_correct_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_correct_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_correct_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hover_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hover_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hover_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hover_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hover_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hover_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hover_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hover_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetable_disable_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetable_disable_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetable_disable_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetable_disable_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'column_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'column_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'column_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'column_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weekday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weekday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weekday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weekday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'option_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'option_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'option_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'option_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_max_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_max_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_max_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_max_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tc_event_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tc_event_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tc_event_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tc_event_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tc_ticket_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tc_ticket_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tc_ticket_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tc_ticket_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_benefits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_benefits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_benefits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_benefits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_requirements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_requirements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_requirements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_requirements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_material_includes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_material_includes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_material_includes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_material_includes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'um_deactivation_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'um_deactivation_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'um_deactivation_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'um_deactivation_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicant_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicant_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resume_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resume_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resume_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resume_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'quiz_score_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'quiz_score_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'quiz_score_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'quiz_score_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wte_booking_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wte_booking_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wte_booking_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wte_booking_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'academy_enrolled_by_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'academy_enrolled_by_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'academy_enrolled_by_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'academy_enrolled_by_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'academy_enrolled_by_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'academy_enrolled_by_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'academy_enrolled_by_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'academy_enrolled_by_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_academy_order_for_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_academy_order_for_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_academy_order_for_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_academy_order_for_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'academy_order_for_course_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'academy_order_for_course_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'academy_order_for_course_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'academy_order_for_course_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_completed_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_completed_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_completed_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_completed_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventAllDay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventTimezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventTimezoneAbbr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tribe_featured_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tribe_featured_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tribe_featured_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tribe_featured_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventHideFromUpcoming'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventHideFromUpcoming'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventHideFromUpcoming'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventHideFromUpcoming'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
