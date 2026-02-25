#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adsrevshare_member_ad_percentage'
wp option delete 'adsrevshare_admin_publisher_id'
wp option delete 'adsrevshare_admin_custom_channel_id'
wp option delete 'adsrevshare_admin_ad_slot'
wp option delete 'adsrevshare_manual_ads_txt'
wp option delete 'adsrevshare_website_url'
wp option delete 'adsrevshare_ad_footer_enabled'
wp option delete 'adsrevshare_ad_footer_type'
wp option delete 'adsrevshare_ad_footer_custom_code'
wp option delete 'adsrevshare_admin_website_url'
wp option delete 'adsrevshare_ad_top_enabled'
wp option delete 'adsrevshare_ad_bottom_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsrevshare_publisher_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsrevshare_publisher_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsrevshare_publisher_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsrevshare_publisher_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsrevshare_custom_channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsrevshare_custom_channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsrevshare_custom_channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsrevshare_custom_channel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsrevshare_ad_slot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsrevshare_ad_slot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsrevshare_ad_slot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsrevshare_ad_slot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adsrevshare_website_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adsrevshare_website_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adsrevshare_website_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adsrevshare_website_url'"
