#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bettergdpr_xtoken'
wp option delete 'bettergdpr_subdomain'
wp option delete 'privacybunker_subdomain'
wp option delete 'bettergdpr_sitekey'
wp option delete 'woocommerce_enable_myaccount_registration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_url'"
