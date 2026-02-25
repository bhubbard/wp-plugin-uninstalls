#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'haway_send_site_details'
wp option delete 'haway_listing_page'
wp option delete 'haway_listings_per_page'
wp option delete 'haway_client_id'
wp option delete 'haway_client_secret'
wp option delete 'haway_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'haway_shortcode_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'haway_shortcode_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'haway_shortcode_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'haway_shortcode_page'"
