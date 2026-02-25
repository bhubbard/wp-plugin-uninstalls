#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcnch_enable_log'
wp option delete 'pcnch_post_types'
wp option delete 'pcnch_update_types'
wp option delete 'pcnch_display_limit'
wp option delete 'pcnch_first_visit_display_limit'
wp option delete 'pcnch_first_visit_post_types'
wp option delete 'pcnch_localstorage_lifetime'
wp option delete 'pcnch_localstorage_first_visit_lifetime'
wp option delete 'pcnch_transient_key_lifetime'
wp option delete 'pcnch_transient_key_first_visit_lifetime'
wp option delete 'pcnch_post_icons'
wp option delete 'pcnch_list_position'
wp option delete 'pcnch_list_width'
wp option delete 'pcnch_read_icon'
wp option delete 'pcnch_show_logo'
wp option delete 'pcnch_mark_all_as_read'
wp option delete 'pcnch_show_read_items'
wp option delete 'pcnch_hide_read_items'
wp option delete 'pcnch_all_read_message'
wp option delete 'pcnch_custom_notifications'
wp option delete 'pcnch_cron_frequency'
wp option delete 'pcnch_cron_time'
wp option delete 'pcnch_show_welcome_message'

# Delete Transients
wp transient delete 'pcnch_first_visit_notifications'
wp transient delete 'pcnch_daily_notifications'

# Clear Cron Jobs
wp cron event delete 'pcnch_refresh_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_blog_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_blog_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_blog_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_blog_tag'"
