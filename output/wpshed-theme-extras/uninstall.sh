#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wte'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_widgets'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_link_url'"
