#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'before_list'
wp option delete 'after_list'
wp option delete 'before_items'
wp option delete 'after_items'
wp option delete 'num'
wp option delete 'api_key'
wp option delete 'country_shortcode'
wp option delete 'update_interval'
wp option delete 'delete_interval'
wp option delete 'auto_insert_post'
wp option delete 'auto_insert_page'
wp option delete 'auto_insert_firma'
wp option delete 'auto_tag_insert'
wp option delete 'custom_field_name'

# Clear Cron Jobs
wp cron event delete 'wake_up_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'key_words'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'key_words'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'key_words'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'key_words'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'key_words_date_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'key_words_date_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'key_words_date_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'key_words_date_use'"
