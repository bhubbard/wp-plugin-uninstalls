#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'featured-post--%'"
wp option delete 'sites-select-search'
wp option delete 'digital_search_settings'
wp option delete 'contact_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_format_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_format_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_format_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_format_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-video'"
