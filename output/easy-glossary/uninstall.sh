#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gseasy_auto_link'
wp option delete 'gseasy_tooltip_enable'
wp option delete 'gseasy_tooltip_style'
wp option delete 'gseasy_index_layout'
wp option delete 'gseasy_custom_html'
wp option delete 'gseasy_permalink_slug'
wp option delete 'gseasy_enable_archive'
wp option delete 'gseasy_permalink_slug_old'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gseasy_term_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gseasy_term_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gseasy_term_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gseasy_term_schema'"
