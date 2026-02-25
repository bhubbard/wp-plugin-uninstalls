#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tclogoslider_sectionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tclogoslider_sectionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tclogoslider_sectionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tclogoslider_sectionid'"
