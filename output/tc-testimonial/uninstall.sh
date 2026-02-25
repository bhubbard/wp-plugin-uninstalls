#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_author_s_info_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_author_s_info_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_author_s_info_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_author_s_info_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_author_s_info_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_author_s_info_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_author_s_info_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_author_s_info_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_author_s_info_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_author_s_info_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_author_s_info_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_author_s_info_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcodes_author_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcodes_author_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcodes_author_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcodes_author_company'"
