#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsx_testimonials_scporder_install'
wp option delete 'LSX_Testimonials_Scporder_Install'
wp option delete '_lsx-to_settings'
wp option delete '_lsx_settings'
wp option delete '_lsx_lsx-settings'
wp option delete 'lsx_testimonials_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsx_testimonial_email_gravatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsx_testimonial_email_gravatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsx_testimonial_email_gravatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsx_testimonial_email_gravatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsx_testimonial_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsx_testimonial_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsx_testimonial_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsx_testimonial_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsx_testimonial_byline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsx_testimonial_byline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsx_testimonial_byline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsx_testimonial_byline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_to_testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_to_testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_to_testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_to_testimonial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'service_to_testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'service_to_testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'service_to_testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'service_to_testimonial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'team_to_testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'team_to_testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'team_to_testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'team_to_testimonial'"
