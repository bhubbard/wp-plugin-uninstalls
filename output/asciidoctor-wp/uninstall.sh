#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpasc_mode_select'
wp option delete 'wpasc_check_post'
wp option delete 'wpasc_check_page'
wp option delete 'wpasc_check_asciidoccss'
wp option delete 'wpasc_check_custum'
wp option delete 'wpasc_check_image'
wp option delete 'wpasc_check_highlight'
wp option delete 'wpasc_check_table_paragraph'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpasciidoc_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpasciidoc_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpasciidoc_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpasciidoc_checkbox'"
