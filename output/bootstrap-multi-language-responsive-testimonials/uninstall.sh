#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'testimonial_post_count'
wp option delete 'testimonial_title'
wp option delete 'testimonial_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
