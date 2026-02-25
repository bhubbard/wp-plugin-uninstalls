#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post-bridge-social-poster-access-token'
wp option delete 'post-bridge-social-poster-refresh-token'
wp option delete 'post-bridge-social-poster-token-expires'

# Delete Transients
wp transient delete 'post_bridge_social_poster_api_profiles'

# Clear Cron Jobs
wp cron event delete 'post_bridge_social_poster_log_cleanup_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_bridge_social_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_bridge_social_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_bridge_social_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_bridge_social_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_bridge_social_poster_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_bridge_social_poster_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_bridge_social_poster_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_bridge_social_poster_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_bridge_social_poster_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_bridge_social_poster_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_bridge_social_poster_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_bridge_social_poster_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_bridge_social_poster_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_bridge_social_poster_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_bridge_social_poster_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_bridge_social_poster_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_publishing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_needs_updating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_errors'"
