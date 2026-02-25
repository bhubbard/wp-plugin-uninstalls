#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mg_wp2tsina'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mg_wp2tsina_last_result_for_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mg_wp2tsina_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mg_wp2tsina_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mg_wp2tsina_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mg_wp2tsina_id'"
