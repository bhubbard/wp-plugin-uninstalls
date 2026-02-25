#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gender_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gender_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gender_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gender_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_companyname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_companyname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_companyname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_companyname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_username'"
