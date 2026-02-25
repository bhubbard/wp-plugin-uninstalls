#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_lite_accounts'
wp option delete 'tiktok_api_version'

# Delete Transients
wp transient delete 'ttp_tiktok_videos'
wp transient delete 'ttp_tiktok_user_info'
wp transient delete 'ttp_tiktok_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_ttp_tiktok_videos' OR option_name LIKE '_site_transient_%_ttp_tiktok_videos'"
wp transient delete 'ttp_tiktok_authorized_data'

