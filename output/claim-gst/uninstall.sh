#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_claim_gst'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstin_holder_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstin_holder_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstin_holder_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstin_holder_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstin_holder_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstin_holder_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstin_holder_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstin_holder_address'"
