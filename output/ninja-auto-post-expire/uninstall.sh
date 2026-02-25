#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njtape_post_expire_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expire_option'"

# Clear Cron Jobs
wp cron event delete 'njtape_post_expiry_add_custom_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_njtape_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_njtape_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_njtape_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_njtape_expiration_date'"
