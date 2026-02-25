#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'devxwp_atc_text_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'devxwp_atc_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'devxwp_atc_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'devxwp_atc_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'devxwp_atc_text'"
