#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jtd_anything_slides_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jtd_anything_slides_nav_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jtd_anything_slides_nav_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jtd_anything_slides_nav_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jtd_anything_slides_nav_format'"
