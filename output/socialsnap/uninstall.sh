#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialsnap_rating'
wp option delete 'socialsnap_activation_redirect'
wp option delete 'socialsnap_authorized_networks'
wp option delete 'socialsnap_version'
wp option delete 'socialsnap_activated'
wp option delete 'dpsp_settings'
wp option delete 'dpsp_location_sidebar'
wp option delete 'dpsp_location_content'
wp option delete 'dpsp_location_sticky_bar'
wp option delete 'fsb_global_option'
wp option delete 'mashsb_settings'
wp option delete 'social_warfare_settings'
wp option delete 'classic-editor-replace'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'socialsnap_homepage_click_share_count_%'"
wp option delete 'socialsnap_homepage_share_count_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'socialsnap_homepage_share_count_%'"
wp option delete 'socialsnap_homepage_share_count_total'
wp option delete 'socialsnap_settings'
wp option delete 'socialsnap_bitly_access_token'
wp option delete 'socialsnap_bitly_user_date'
wp option delete 'socialsnap_bitly_username'
wp option delete 'socialsnap_cached_bitly_links'
wp option delete 'socialsnap_follow_counts'
wp option delete 'socialsnap_license_updates'
wp option delete 'socialsnap_license'

# Delete Transients
wp transient delete 'socialsnap_addons'
wp transient delete 'socialsnap_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_socialsnap_notice_%' OR option_name LIKE '_site_transient_socialsnap_notice_%'"
wp transient delete 'ss_facebook_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_social_share_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_social_share_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_social_share_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_social_share_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_total_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_total_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_total_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_total_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_ss_share_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_ss_share_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_ss_share_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_ss_share_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_ss_custom_tweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_ss_custom_tweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_ss_custom_tweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_ss_custom_tweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_ss_click_share_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_ss_click_share_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socialsnap_share_count_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socialsnap_share_count_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socialsnap_share_count_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socialsnap_share_count_timestamp'"
