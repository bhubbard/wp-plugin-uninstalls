#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'testimonial_slider_options'
wp option delete 'testimonial_slider_scounter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'testimonial_slider_options%'"
wp option delete 'testimonial_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_slide_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_slide_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_slide_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_slide_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_sslider_nolink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_sslider_nolink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_sslider_nolink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_sslider_nolink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_link_attr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_link_attr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_link_attr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_link_attr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_siteurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_siteurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_siteurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_siteurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_star'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_star'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_star'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_star'"
