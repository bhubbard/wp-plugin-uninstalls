#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulpb_new_user_perm'
wp option delete 'landingPageSafeModeFeature'
wp option delete 'landingpageTempalteIncludeType'
wp option delete 'popb_csm_options'
wp option delete 'popb_maintenance_options'
wp option delete 'landingPageAsComingSoonPage'
wp option delete 'cpt_reset_ulpb_pluginops'
wp option delete 'popbLandingpageUrlKeyword'
wp option delete 'page_builder_SupportedPostTypes'
wp option delete 'popb_pluginops_custom_fonts'
wp option delete 'popb_csm_extra_options'
wp option delete 'landingPageLinkTrackingFeature'
wp option delete 'landingpageDisablePublicNonce'
wp option delete 'popb_csmnt_options'
wp option delete 'ulpb_global_tracking_scripts'
wp option delete 'ulpb_global_tracking_scriptsBodyTag'
wp option delete 'ulpb_aweber_auth_code'
wp option delete 'ulpb_aweber_accessToken'
wp option delete 'ulpb_aweber_accessTokenSecret'
wp option delete 'popb_constant_contact_refresh_token'
wp option delete 'plugOps_activation_date'
wp option delete 'pluginops_tracking_consent'
wp option delete 'popb_constant_contact_access_token'
wp option delete 'popb_constant_contact_o_auth_token'
wp option delete 'imgLib_db_updated'
wp option delete 'popb_main_user_referer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_bugs1two_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_specialOffer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_welcomeNotice_%'"
wp option delete 'pluginOps_d_upd_not_req'
wp option delete 'plugOPB_activation_date'
wp option delete 'plugOpB_hide_plugin_install_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugOPB_hide_specialOffera2_%'"
wp option delete 'pluginops_cspv2_op'
wp option delete 'ulpb_plugin_activation_check_option'
wp option delete 'ulpb_new_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_builder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_FrontPage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_hit_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_loadThemeWrapper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_loadThemeWrapper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_loadThemeWrapper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_loadThemeWrapper'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_DATA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ULPB_DATA_Rows_Part_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_loadWpHead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_loadWpFooterTwo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_loadWpFooterTwo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_loadWpFooterTwo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_loadWpFooterTwo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ULPB_MultiVariantTesting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_subscribers_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_conversion_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_formBuilder_data_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssm_clickThrough_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctnTotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctrTpLinks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulpb_page_views_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popb_closed_popup_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popb_closed_popup_count'"
