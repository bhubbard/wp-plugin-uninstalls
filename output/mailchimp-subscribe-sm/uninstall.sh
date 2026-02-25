#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'landingPageSafeModeFeature'
wp option delete 'cpt_reset_msf_pluginops'
wp option delete 'page_builder_SupportedPostTypes'
wp option delete 'smfb_autoplacement_options'
wp option delete 'ulpb_aweber_auth_code'
wp option delete 'ulpb_aweber_accessToken'
wp option delete 'ulpb_aweber_accessTokenSecret'
wp option delete 'popb_constant_contact_refresh_token'
wp option delete 'popb_constant_contact_access_token'
wp option delete 'popb_constant_contact_o_auth_token'
wp option delete 'landingpageDisablePublicNonce'
wp option delete 'ulpb_formBuilder_subForm_recent_entries'
wp option delete 'plugOps_activation_date'
wp option delete 'msfpluginops_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_bugs1two_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_specialOffer_%'"
wp option delete 'plugOPB_activation_date'
wp option delete 'msfpluginops_hide_bugsOne'
wp option delete 'msfpluginops_prem_plugin_ver'
wp option delete 'plugOpB_hide_plugin_install_notice'
wp option delete 'msfpluginops_plugin_activation_check_option'
wp option delete 'smfb_prem_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_CurrentStep'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_CurrentStep'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_CurrentStep'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_CurrentStep'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_Page_ShortCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_Page_ShortCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_Page_ShortCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_Page_ShortCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_loadWpFooter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_loadWpFooter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_loadWpFooter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_loadWpFooter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctrTpLinks'"
