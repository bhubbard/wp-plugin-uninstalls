#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featured_background_supported_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_background_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_background_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_background_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_background_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-background'"
