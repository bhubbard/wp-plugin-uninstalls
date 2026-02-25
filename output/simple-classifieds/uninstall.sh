#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%flush_rules'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iworks_classifieds_contact_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iworks_classifieds_contact_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iworks_classifieds_contact_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iworks_classifieds_contact_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google'"
