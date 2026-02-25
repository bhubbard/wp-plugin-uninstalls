#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmp_monetizze_dados'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmp_monetizze_dados'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmp_monetizze_dados'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmp_monetizze_dados'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmp_monetizze_saleid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmp_monetizze_saleid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmp_monetizze_saleid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmp_monetizze_saleid'"
