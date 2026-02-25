#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c247_registered'
wp option delete 'c247_replace_existing_links'
wp option delete 'c247_token'
wp option delete 'c247_username'
wp option delete 'c247_user_id'
wp option delete 'c247_profile_first_name'
wp option delete 'c247_profile_last_name'
wp option delete 'c247_profile_email'
wp option delete 'c247_website_id'
wp option delete 'c247_profile_gender'
wp option delete 'c247_site_logo'
wp option delete 'c247_site_title'
wp option delete 'c247_create_new_links'
wp option delete 'c247_show_offers'
wp option delete 'c247_new_window'
wp option delete 'c247_post_process'
wp option delete 'c247_ver'
wp option delete 'c247_db_ver'
wp option delete 'c247_no_follow_links'
wp option delete 'c247_total_posts'
wp option delete 'c247_current_post'

# Delete Transients
wp transient delete 'c247_about_page_activated'

# Clear Cron Jobs
wp cron event delete 'c247_daily_update'
wp cron event delete 'c247_hourly_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c247_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c247_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c247_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c247_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c247_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c247_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c247_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c247_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'c247_disable_offers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'c247_disable_offers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'c247_disable_offers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'c247_disable_offers'"
