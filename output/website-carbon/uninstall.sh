#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websitecarbon-green'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc-report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc-report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc-report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc-report'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc-co2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc-co2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc-co2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc-co2'"
