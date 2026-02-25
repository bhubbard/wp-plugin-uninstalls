#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ketchupthemes-widget_recent_listings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_listing_address_listing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_listing_address_listing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_listing_address_listing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_listing_address_listing_address'"
