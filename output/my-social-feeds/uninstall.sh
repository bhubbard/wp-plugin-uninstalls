#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ifbData'
wp option delete 'bpifb_Data'
wp option delete 'fs_lite_accounts'
wp option delete 'msfbp_instagram_access_tokens'
wp option delete 'msfbp_pinterest_feeds_credentials'
wp option delete 'ttp_tiktok_accounts_migrated'
wp option delete 'ttp_tiktok_accounts'
wp option delete 'msfbp_twitter_credentials'

# Delete Transients
wp transient delete 'ttp_tiktok_videos'
wp transient delete 'ttp_tiktok_user_info'
wp transient delete 'ifbInstagramData'
wp transient delete 'ttp_tiktok_authorized_data'
wp transient delete 'ttp_tiktok_access_token'

