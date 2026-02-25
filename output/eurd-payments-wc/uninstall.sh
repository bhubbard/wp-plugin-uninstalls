#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_eurd_settings'
wp option delete 'woocommerce_coming_soon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eurd_pr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eurd_pr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eurd_pr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eurd_pr_code'"
