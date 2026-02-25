#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ensemble_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-start-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-start-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-start-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-start-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-end-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-end-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-end-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-end-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-directors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-directors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-directors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-directors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ensemble-instructors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ensemble-instructors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ensemble-instructors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ensemble-instructors'"
