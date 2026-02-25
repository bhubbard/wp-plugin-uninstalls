#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_rocket_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sr_admin_notice_%'"
wp option delete 'social_rocket_settings'
wp option delete '_social_rocket_facebook_invalid_token'
wp option delete 'active_sitewide_plugins'
wp option delete 'sr_admin_notice_sr_invalid_facebook_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_call'"
wp option delete '_social_rocket_buffer_last_call'
wp option delete '_social_rocket_facebook_last_call'
wp option delete '_social_rocket_pinterest_last_call'
wp option delete '_social_rocket_reddit_last_call'
wp option delete '_social_rocket_twitter_last_call'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice' OR option_name LIKE '_site_transient_%_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'sr_hide_sr_invalid_facebook_token_notice'

# Clear Cron Jobs
wp cron event delete 'social_rocket_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_total_shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_total_shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_total_shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_total_shares'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_pinterest_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_pinterest_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_pinterest_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_pinterest_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_pinterest_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_pinterest_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_pinterest_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_pinterest_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_twitter_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_twitter_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_twitter_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_twitter_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_inline_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_inline_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_inline_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_inline_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_floating_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_floating_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_floating_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_floating_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_facebook_profile_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_facebook_profile_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_facebook_profile_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_facebook_profile_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_twitter_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_twitter_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_twitter_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_twitter_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_rocket_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_rocket_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_rocket_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_rocket_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb2_ready'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb2_ready'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb2_ready'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb2_ready'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
