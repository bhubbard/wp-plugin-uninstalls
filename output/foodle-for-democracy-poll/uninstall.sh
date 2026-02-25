#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foodle_dem_categories'
wp option delete 'foodle_reminders'
wp option delete 'foodle_settings'
wp option delete 'foodle_meta_fields'
wp option delete 'foodle_meta_defaults_sorting'
wp option delete 'foodle_regex_main'
wp option delete 'foodle_special_functions'
wp option delete 'foodle_version'
wp option delete 'foodle_variables'
wp option delete 'foodle_change_demCollectAnsw'
wp option delete 'foodle_email_content'
wp option delete 'foodle_shortcode_usage_update'
wp option delete 'foodle_democracy_post_usage'
wp option delete 'foodle_foodle_post_usage'
wp option delete 'foodle_comments_post_usage'
wp option delete 'foodle_shortcode_usage_error_pages_posts'
wp option delete 'democracy_options'

# Clear Cron Jobs
wp cron event delete 'foodle_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foodle_variables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foodle_variables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foodle_variables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foodle_variables'"
