#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'altaudit82ai_quality_scores_migrated'
wp option delete 'altaudit82ai_last_scan_time'
wp option delete 'altaudit82ai_scan_reminder_dismissed'

# Clear Cron Jobs
wp cron event delete 'altaudit82ai_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altaudit82ai_auto_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altaudit82ai_auto_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altaudit82ai_auto_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altaudit82ai_auto_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altaudit82ai_decorative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altaudit82ai_decorative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altaudit82ai_decorative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altaudit82ai_decorative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altaudit82ai_quality_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altaudit82ai_quality_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altaudit82ai_quality_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altaudit82ai_quality_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altaudit82ai_generation_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altaudit82ai_generation_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altaudit82ai_generation_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altaudit82ai_generation_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
