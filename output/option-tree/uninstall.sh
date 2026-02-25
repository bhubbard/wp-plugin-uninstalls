#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ot_css_file_paths'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_quote_source_url'"
