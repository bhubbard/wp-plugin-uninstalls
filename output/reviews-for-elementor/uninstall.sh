#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'testimonials_support_settings'
wp option delete 'testimonials_reviews_list_options'
wp option delete 'testimonials_settings'
wp option delete 'testimonials_review_settings_options'
wp option delete 'testimonials_settings_settings'
wp option delete 'cpo_content_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imageobject_%' OR option_name LIKE '_site_transient_imageobject_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_link'"
