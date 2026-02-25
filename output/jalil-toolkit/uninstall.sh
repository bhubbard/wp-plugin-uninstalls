#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jalil_team_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jalil_team_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jalil_team_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jalil_team_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jalil_testimonial_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jalil_testimonial_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jalil_testimonial_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jalil_testimonial_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jalil_slide_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jalil_slide_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jalil_slide_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jalil_slide_options'"
