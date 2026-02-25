#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccspllms_enabled'
wp option delete 'ccspllms_site_title'
wp option delete 'ccspllms_site_tagline'
wp option delete 'ccspllms_post_types'
wp option delete 'ccspllms_excerpt_priority'
wp option delete 'ccspllms_word_limit'
wp option delete 'ccspllms_use_canonical'
wp option delete 'ccspllms_auto_regenerate'
wp option delete 'ccspllms_email_notifications'
wp option delete 'ccspllms_notification_email'
wp option delete 'ccspllms_cron_frequency'
wp option delete 'ccspllms_cron_time'
wp option delete 'ccspllms_debug_logging'
wp option delete 'ccspllms_last_generated'
wp option delete 'ccspllms_file_stats'
wp option delete 'ccspllms_auto_regenerate_new'
wp option delete 'ccspllms_auto_regenerate_update'
wp option delete 'ccspllms_version'

# Delete Transients
wp transient delete 'ccspllms_cached_content'

# Clear Cron Jobs
wp cron event delete 'ccspllms_generate_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccspllms_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccspllms_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccspllms_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccspllms_custom_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccspllms_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccspllms_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccspllms_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccspllms_excluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
