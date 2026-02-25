#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buying_buddy_settings'
wp option delete 'buying_buddy_activation_redirect'
wp option delete 'buying_buddy_foundation_pages'
wp option delete 'buyingbuddy_version'
wp option delete 'buyingbuddy_options'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'buying_buddy_update_check'
wp transient delete 'update_plugins'
wp transient delete 'buying_buddy_property_cache'
wp transient delete 'buying_buddy_repository_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
