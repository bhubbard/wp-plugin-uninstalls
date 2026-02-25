#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after'"
wp option delete 'stars_testimonials_update_message'
wp option delete 'stars_testimonail_plugin_redirection'
wp option delete 'hide_testirecommended_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_company_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_company_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_company_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_company_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_stars'"
