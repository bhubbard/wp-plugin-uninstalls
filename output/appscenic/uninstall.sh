#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appscenic_webhook_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appscenic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appscenic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appscenic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appscenic_id'"
