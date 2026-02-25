#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailoptin_aweber_connection_401_block'
wp option delete 'mo_edd_unsubscribers'
wp option delete 'mo_fbca_access_token_expired_status'
wp option delete 'mo_givewp_unsubscribers'
wp option delete 'mo_leadbank_unsubscribers'
wp option delete 'mo_learndash_unsubscribers'
wp option delete 'mo_lifterlms_unsubscribers'
wp option delete 'mo_mailjet_double_optin_bucket'
wp option delete 'mo_memberpress_unsubscribers'
wp option delete 'mailoptinMemberPressDoubleOptin'
wp option delete 'mailoptinMemberPressSelectList'
wp option delete 'mailoptinMemberPressEnabled'
wp option delete 'mailoptinMemberPressSubscribeMembers'
wp option delete 'mailoptinMemberPressOptinFieldLabel'
wp option delete 'mailoptinMemberPressOptinCheckboxDefault'
wp option delete 'mailoptinMemberPressSelectIntegration'
wp option delete 'mailoptinMemberPressTextTags'
wp option delete 'mailoptinMemberPressSelectTags'
wp option delete 'mo_pmpro_unsubscribers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_pmpro_%'"
wp option delete 'mo_rcp_unsubscribers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_rcp_%'"
wp option delete 'mo_wp_user_unsubscribers'
wp option delete 'mo_tutorlms_unsubscribers'
wp option delete 'wpforms_providers'
wp option delete 'mo_woo_unsubscribers'
wp option delete 'mo_wcmembership_unsubscribers'
wp option delete 'mo_wcsubscription_unsubscribers'
wp option delete 'mo_dismiss_leave_review_forever'
wp option delete 'mo_install_date'
wp option delete 'mo_conversion_csv_path'
wp option delete 'mailoptin_connect_token'
wp option delete 'mo_license_key'
wp option delete 'mo_upgrader_success_flag'
wp option delete 'mo_db_ver'
wp option delete 'mo_plugin_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mobfnote_dismiss_adnotice_%'"
wp option delete 'mobfnote_dismiss_adnotice'
wp option delete 'mo_license_status'
wp option delete 'mo_license_expired_status'
wp option delete 'mo_price_id'
wp option delete 'mo_state_repository'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"

# Delete Transients
wp transient delete '_mo_activecampaign_is_connected'
wp transient delete 'mo_activecampaign_forms'
wp transient delete '_mo_beehiiv_is_connected'
wp transient delete '_mo_benchmarkemail_is_connected'
wp transient delete 'mo_campaign_monitor_clients'
wp transient delete '_mo_convertfox_is_connected'
wp transient delete '_mo_convertkit_is_connected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctctv3_get_optin_fields_%' OR option_name LIKE '_site_transient_ctctv3_get_optin_fields_%'"
wp transient delete '_mo_drip_is_connected'
wp transient delete '_mo_egoi_is_connected'
wp transient delete 'mailoptin_egoi_sender_list'
wp transient delete '_mo_elasticemail_is_connected'
wp transient delete '_mo_emailoctopus_is_connected'
wp transient delete '_mo_emma_is_connected'
wp transient delete '_mo_encharge_is_connected'
wp transient delete '_mo_facebookcustomaudience_is_connected'
wp transient delete '_mo_flodesk_is_connected'
wp transient delete '_mo_getresponse_is_connected'
wp transient delete 'mo_connections_google_sheet_files'
wp transient delete 'mo_connections_google_sheet_files_sheets'
wp transient delete 'mo_connections_google_sheets_columns'
wp transient delete 'mo_hubspot_get_owners'
wp transient delete 'mo_hubspot_get_v3api_email_list'
wp transient delete 'mo_hubspot_get_optin_fields_'
wp transient delete 'mo_hubspot_get_property_options_hs_lead_status'
wp transient delete 'mo_hubspot_get_property_options_lifecyclestage'
wp transient delete '_mo_icontact_is_connected'
wp transient delete '_mo_klaviyo_is_connected'
wp transient delete '_mo_mailchimp_is_connected'
wp transient delete '_mo_mailercloud_is_connected'
wp transient delete '_mo_mailerlite_is_connected'
wp transient delete '_mo_mailerlitev2_is_connected'
wp transient delete '_mo_mailgun_is_connected'
wp transient delete '_mo_mailjet_is_connected'
wp transient delete '_mo_mailjet_get_sender_id'
wp transient delete '_mo_moosend_is_connected'
wp transient delete 'newsman_get_email_list'
wp transient delete '_mo_ontraport_is_connected'
wp transient delete '_mo_orttocrm_is_connected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__mo_connection_cache_%' OR option_name LIKE '_site_transient__mo_connection_cache_%'"
wp transient delete '_mo_sendfox_is_connected'
wp transient delete 'mailoptin_sendfox_sender'
wp transient delete '_mo_sendgrid_is_connected'
wp transient delete 'mailoptin_sendgrid_sender_list'
wp transient delete '_mo_sender_is_connected'
wp transient delete 'mo_sender_get_email_lists'
wp transient delete '_mo_sendinblue_is_connected'
wp transient delete '_mo_sendlane_is_connected'
wp transient delete '_mo_sendy_is_connected'
wp transient delete '_mo_wemail_is_connected'
wp transient delete 'mo_get_authors'
wp transient delete 'mo_get_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yolo-plugin-info-%' OR option_name LIKE '_site_transient_yolo-plugin-info-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'mo_get_optin_ids_footer_display'
wp transient delete 'mo_get_optin_ids_inpost_display'
wp transient delete 'ctctv3_tags'
wp transient delete 'emma_forms'
wp transient delete 'getresponse_tags'
wp transient delete 'ontraport_tags'
wp transient delete 'mo_zohocrm_users'

# Clear Cron Jobs
wp cron event delete 'mo_hourly_recurring_job'
wp cron event delete 'mo_daily_recurring_job'
wp cron event delete 'mo_twice_daily_recurring_job'
wp cron event delete 'mailoptin_send_scheduled_email_campaign'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mocf7_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mocf7_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mocf7_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mocf7_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinEDDSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinEDDSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinEDDSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinEDDSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinEDDSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinEDDSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinEDDSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinEDDSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinEDDDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinEDDDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinEDDDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinEDDDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinEDDTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinEDDTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinEDDTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinEDDTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinEDDSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinEDDSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinEDDSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinEDDSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinGWPSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinGWPSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinGWPSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinGWPSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinGWPSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinGWPSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinGWPSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinGWPSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinGWPDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinGWPDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinGWPDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinGWPDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinGWPTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinGWPTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinGWPTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinGWPTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinGWPSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinGWPSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinGWPSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinGWPSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinLearnDashSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinLearnDashSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinLearnDashSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinLearnDashSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLearnDashDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLearnDashDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLearnDashDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLearnDashDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLearnDashTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLearnDashTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLearnDashTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLearnDashTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLearnDashSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLLMSDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLLMSDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLLMSDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLLMSDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLLMSSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinLLMSSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinLLMSSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinLLMSSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinLLMSSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLLMSTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLLMSTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLLMSTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLLMSTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinLLMSSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinLLMSSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_mailoptin_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_mailoptin_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_mailoptin_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_mailoptin_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinMemberPressSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinMemberPressSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinMemberPressSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinMemberPressSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinMemberPressDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinMemberPressDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinMemberPressDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinMemberPressDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinMemberPressTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinMemberPressTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinMemberPressTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinMemberPressTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinMemberPressSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinTutorLMSSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinTutorLMSSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinTutorLMSSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinTutorLMSSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinTutorLMSDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinTutorLMSDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinTutorLMSDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinTutorLMSDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinTutorLMSTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinTutorLMSTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinTutorLMSTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinTutorLMSTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinTutorLMSSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinUMSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinUMSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinUMSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinUMSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinUMSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinUMSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinUMSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinUMSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinUMDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinUMDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinUMDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinUMDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinUMTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinUMTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinUMTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinUMTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinUMSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinUMSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinUMSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinUMSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinWooCommerceSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinWooCommerceSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinWooCommerceSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinWooCommerceSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooCommerceDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooCommerceDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooCommerceDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooCommerceDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooCommerceTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooCommerceTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooCommerceTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooCommerceTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooCommerceSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptin_woocommerce_optin_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptin_woocommerce_optin_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptin_woocommerce_optin_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptin_woocommerce_optin_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailoptinWooMemSelectIntegration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailoptinWooMemSelectIntegration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailoptinWooMemSelectIntegration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailoptinWooMemSelectIntegration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooMemDoubleOptin]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooMemDoubleOptin]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooMemDoubleOptin]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooMemDoubleOptin]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectList]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooMemSelectList]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectList]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectList]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooMemTextTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooMemTextTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooMemTextTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooMemTextTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectTags]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%[mailoptinWooMemSelectTags]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectTags]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%[mailoptinWooMemSelectTags]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mo_disable_npp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mo_disable_npp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mo_disable_npp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mo_disable_npp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
