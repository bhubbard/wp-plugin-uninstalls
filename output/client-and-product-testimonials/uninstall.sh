#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cat_options'
wp option delete 'client_and_product_testimonials_activation_redirect'
wp option delete 'client_and_product_testimonials_license_key'
wp option delete 'client_and_product_testimonials_license_status'

# Delete Transients
wp transient delete 'capt_admin_upsell_banner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_video_player_parameters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_video_player_parameters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_video_player_parameters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_video_player_parameters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_vimeo_video_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_vimeo_video_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_vimeo_video_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_vimeo_video_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_video_testimonial_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_video_testimonial_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_video_testimonial_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_video_testimonial_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_video_testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_video_testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_video_testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_video_testimonial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_testimonial_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_testimonial_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_testimonial_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_testimonial_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_client_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_client_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_client_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_client_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_details_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_details_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_details_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_details_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
