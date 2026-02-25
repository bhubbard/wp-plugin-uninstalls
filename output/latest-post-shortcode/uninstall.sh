#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lps-classic-exclude-role'
wp option delete 'widget_custom_html'
wp option delete 'lps-assets-all'
wp option delete 'lps-legacy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
