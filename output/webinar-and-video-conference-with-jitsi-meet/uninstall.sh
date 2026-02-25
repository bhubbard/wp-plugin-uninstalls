#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jitsi_opt_select_api'
wp option delete 'jitsi_opt_free_domain'
wp option delete 'jitsi_opt_width'
wp option delete 'jitsi_opt_height'
wp option delete 'jitsi_opt_start_local_audio_muted'
wp option delete 'jitsi_opt_startWithVideoMuted'
wp option delete 'jitsi_opt_startScreenSharing'
wp option delete 'jitsi_opt_invite'
wp option delete 'jitsi_opt_app_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%private_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%app_id'"
wp option delete 'webinar-and-video-conference-with-jitsi-meet_allow_tracking'
wp option delete 'jitsi_meet_wp_review_notice_interval'
wp option delete 'jitsi_meet_wp_affiliate_notice_interval'
wp option delete 'jitsi_meet_welcome_redirect'
wp option delete 'jitsi_pro_activate'
wp option delete 'jitsi_ultimate_activate'
wp option delete 'jitsi_pro_license_is_valid'
wp option delete 'jitsi_ultimate_license_is_valid'
wp option delete 'jitsi_opt_api_key'
wp option delete 'jitsi_opt_private_key'
wp option delete 'jitsi_opt_user_avatar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'active_sitewide_plugins'
wp option delete 'jitsi_meet_wp_install_time'

# Delete Transients
wp transient delete 'jitsi_saved_jwt'
wp transient delete 'jitsi_meet_wp_review_notice_interval'
wp transient delete 'jitsi_meet_wp_affiliate_notice_interval'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jitsi_hosted_topbar_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jitsi_hosted_topbar_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jitsi_hosted_topbar_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jitsi_hosted_topbar_dismissed'"
