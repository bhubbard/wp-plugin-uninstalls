#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lbrty_settings_general_options'
wp option delete 'lbrty_settings_display_options'
wp option delete 'lbrty_settings_advanced_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'lbrty_book_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lbrty_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lbrty_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lbrty_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lbrty_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lbrty_isbn13'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lbrty_isbn13'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lbrty_isbn13'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lbrty_isbn13'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lbrty_stores_found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lbrty_stores_found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lbrty_stores_found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lbrty_stores_found'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lbrty_last_lookup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lbrty_last_lookup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lbrty_last_lookup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lbrty_last_lookup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lbrty_first_lookup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lbrty_first_lookup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lbrty_first_lookup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lbrty_first_lookup'"
