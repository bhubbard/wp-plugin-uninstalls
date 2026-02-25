#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartypress_ai_settings'
wp option delete 'smartypress_ai_activated_at'

# Delete Transients
wp transient delete 'smartypress_ai_cache'

# Clear Cron Jobs
wp cron event delete 'smartypress_ai_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_review_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_review_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_review_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_review_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_review_dismiss_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_review_dismiss_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_review_dismiss_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_review_dismiss_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_resolution'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_resolution'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_resolution'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_resolution'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartypress_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartypress_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartypress_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartypress_ai_generated'"
