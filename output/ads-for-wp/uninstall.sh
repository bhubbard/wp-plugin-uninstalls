#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adsforwp-database-on-first-load'
wp option delete 'adsforwp_do_activation_redirect'
wp option delete 'adsforwp_activation_date'
wp option delete 'adsforwp_settings'
wp option delete 'adsforwp-file-upload_url'
wp option delete 'advanced-ads-adsense'
wp option delete 'advads-ads-placements'
wp option delete 'redux_builder_amp'
wp option delete 'quick_adsense_settings'
wp option delete 'advads-ad-groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adsforwp_ip_request_%'"
wp option delete 'afw_add_blocked_ip'
wp option delete 'review_notice_bar_close_date'
wp option delete 'adsforwp_review_never'
wp option delete 'adsforwp_google_token'
wp option delete 'adsforwp_wisdom_block_notice'
wp option delete 'wp_rocket_settings'

# Delete Transients
wp transient delete 'adsforwp_admin_notice_transient'
wp transient delete 'adsforwp_transient_amp_ids'
wp transient delete 'transient_all_afw_ads_data'
wp transient delete 'transient_all_groups_data'
wp transient delete 'adsforwp_transient_ads_ids'
wp transient delete 'adsforwp_groups_transient_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsense_pub_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsense_pub_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsense_pub_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsense_pub_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsense_ad_slot_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsense_ad_slot_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsense_ad_slot_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsense_ad_slot_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'select_adtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'select_adtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'select_adtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'select_adtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsense_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsense_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsense_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsense_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visitor_conditions_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visitor_conditions_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visitor_conditions_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visitor_conditions_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_background_image_detail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_background_image_detail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_background_image_detail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_background_image_detail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_background_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_background_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_background_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_background_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ads-for-wp_amp_compatibilty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ads-for-wp_amp_compatibilty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ads-for-wp_amp_compatibilty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ads-for-wp_amp_compatibilty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ads_for_wp_non_amp_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ads_for_wp_non_amp_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ads_for_wp_non_amp_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ads_for_wp_non_amp_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsforwp_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsforwp_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsforwp_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsforwp_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ads_on_every_paragraphs_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ads_on_every_paragraphs_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ads_on_every_paragraphs_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ads_on_every_paragraphs_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsforwp_ad_margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsforwp_ad_margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsforwp_ad_margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsforwp_ad_margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsforwp_ad_expire_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsforwp_ad_expire_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsforwp_ad_expire_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsforwp_ad_expire_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_group_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsforwp_v_condition_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsforwp_v_condition_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsforwp_v_condition_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsforwp_v_condition_enable'"
