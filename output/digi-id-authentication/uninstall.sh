#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digiid_plugin_version'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digiid_addr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digiid_addr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digiid_addr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digiid_addr'"
