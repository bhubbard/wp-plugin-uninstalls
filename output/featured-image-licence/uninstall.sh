#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swfil_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'licence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'licence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'licence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'licence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photograph_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photograph_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photograph_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photograph_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photographer'"
