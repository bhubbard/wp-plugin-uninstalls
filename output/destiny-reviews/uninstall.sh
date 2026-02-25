#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dr_admin_email'
wp option delete 'dr_use_dr_styles'
wp option delete 'dr_custom_thank_you_page'
wp option delete 'dr_custom_name_label'
wp option delete 'dr_custom_name_placeholder'
wp option delete 'dr_custom_testimonial_label'
wp option delete 'dr_custom_testimonial_placeholder'
wp option delete 'dr_theme'
wp option delete 'dr_custom_bg'
wp option delete 'dr_custom_txt_clr'
wp option delete 'dr_border_radius'
wp option delete 'dr_border_radius_type'
wp option delete 'dr_button_colour'
wp option delete 'destiny_reviews_client_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'destiny_reviews_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'destiny_reviews_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'destiny_reviews_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'destiny_reviews_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_destiny_reviews_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_destiny_reviews_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_destiny_reviews_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_destiny_reviews_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_destiny_reviews_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_destiny_reviews_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_destiny_reviews_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_destiny_reviews_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_destiny_reviews_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_destiny_reviews_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_destiny_reviews_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_destiny_reviews_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
