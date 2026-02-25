#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quads_settings_backup'
wp option delete 'quads_settings'
wp option delete 'quads-mode'
wp option delete 'quadsAdReset'
wp option delete 'quads_settings_backup_reset'
wp option delete 'quadsAdResetDeleted'
wp option delete 'quadsAdReset_optionsDeleted'
wp option delete 'quads_wp_quads_pro_license_active'
wp option delete 'adsforwp_to_quads'
wp option delete 'advanced-ads'
wp option delete 'redux_builder_amp'
wp option delete 'quads_import_classic_ads_popup'
wp option delete 'quads_sellpage'
wp option delete 'quads_show_theme_notice'
wp option delete 'add_blocked_ip'
wp option delete 'quads_import_data'
wp option delete 'quads_db_import'
wp option delete 'quads_v2_db_no_import'
wp option delete 'quads_install_date'
wp option delete 'quads_rating_div'
wp option delete 'quads_date_next_notice'
wp option delete 'quads_show_update_notice'
wp option delete 'quads_hide_update_notice_1_5_3'
wp option delete 'quads_version_upgraded_from'
wp option delete 'quads_hide_adpushup_notice'
wp option delete 'quads_show_notice_auto_ads'
wp option delete 'quads_settings_general'
wp option delete 'quads_settings_extensions'
wp option delete 'quads_settings_licenses'
wp option delete 'quads_settings_addons'
wp option delete 'quads_settings_imexport'
wp option delete 'quads_settings_help'
wp option delete 'quads_settings_1_5_2'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WidCode%'"
wp option delete 'AdsDisp'
wp option delete 'BegnAds'
wp option delete 'BegnRnd'
wp option delete 'MiddAds'
wp option delete 'MiddRnd'
wp option delete 'EndiAds'
wp option delete 'EndiRnd'
wp option delete 'MoreAds'
wp option delete 'MoreRnd'
wp option delete 'LapaAds'
wp option delete 'LapaRnd'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Ads'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Rnd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Nup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Con'"
wp option delete 'Img1Ads'
wp option delete 'Img1Rnd'
wp option delete 'Img1Nup'
wp option delete 'Img1Con'
wp option delete 'AppHome'
wp option delete 'AppCate'
wp option delete 'AppArch'
wp option delete 'AppTags'
wp option delete 'AppMaxA'
wp option delete 'AppSide'
wp option delete 'AppLogg'
wp option delete 'QckTags'
wp option delete 'QckRnds'
wp option delete 'QckOffs'
wp option delete 'QckOfPs'
wp option delete 'AppPost'
wp option delete 'AppPage'
wp option delete 'quads_version'
wp option delete 'bimber_theme'
wp option delete 'quads_adsense_api_data'
wp option delete 'advads-ads-placements'
wp option delete 'quads_install_date_flag'
wp option delete 'quads_show_update_notice_1_5_2'
wp option delete 'quads_close_vi_welcome_notice'
wp option delete 'quads_close_vi_notice'
wp option delete 'quads_vi_ads'
wp option delete 'quads_vi_settings'
wp option delete 'quads_vi_revenue'
wp option delete 'quads_vi_variant'
wp option delete 'quads_vi_token'

# Delete Transients
wp transient delete 'quads_vi_ads_txt_notice'
wp transient delete 'quads_vi_ads_txt_error'
wp transient delete 'quads_ads_txt_error'
wp transient delete 'quads_deactivated_notice_id'
wp transient delete 'close_ads_txt_error'
wp transient delete 'quads_notice_lic_expired'
wp transient delete 'quads_license_bug_fixed'
wp transient delete 'quads_ads_txt_disabled'
wp transient delete 'quads_activation_redirect'
wp transient delete 'quads_transient_amp_ids'
wp transient delete 'quads_check_theme'

# Clear Cron Jobs
wp cron event delete 'quads_weekly_event'
wp cron event delete 'quads_daily_event'
wp cron event delete 'quads_daily_check_expired_sellads'
wp cron event delete 'quads_logs_weekly_clear'
wp cron event delete 'quads_cron_import'
wp cron event delete 'quads_cron_import_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quads_ad_old_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quads_ad_old_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quads_ad_old_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quads_ad_old_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'align'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'align'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'align'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'align'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visibility_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visibility_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visibility_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visibility_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visibility_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visibility_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visibility_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visibility_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'targeting_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'targeting_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'targeting_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'targeting_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'targeting_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'targeting_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'targeting_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'targeting_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_minimum_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_minimum_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_minimum_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_minimum_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_minimum_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_minimum_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_minimum_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_minimum_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_cost_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_cost_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_cost_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_cost_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quads_adsense_pub_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quads_adsense_pub_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quads_adsense_pub_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quads_adsense_pub_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quads_config_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quads_config_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quads_config_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quads_config_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ads_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ads_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ads_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ads_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
