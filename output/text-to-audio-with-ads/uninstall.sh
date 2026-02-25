#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'text_to_audio_with_ads_api_key'
wp option delete 'text_to_audio_with_ads_api_password'
wp option delete 'text_to_audio_with_ads_player_secret'
wp option delete 'text_to_audio_with_ads_error_logging'
wp option delete 'text_to_audio_with_ads_errors'

# Delete Transients
wp transient delete 'text_to_audio_with_ads_admin_notice'

# Clear Cron Jobs
wp cron event delete 'text_to_audio_with_ads_send_post_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_previous_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_previous_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_previous_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_previous_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_previous_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_previous_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_previous_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_previous_content'"
