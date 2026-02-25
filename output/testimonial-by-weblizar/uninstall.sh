#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wltp_testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wltp_testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wltp_testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wltp_testimonial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wltp_testimonial_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wltp_testimonial_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wltp_testimonial_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wltp_testimonial_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wltp_testimonial_layout_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wltp_testimonial_layout_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wltp_testimonial_layout_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wltp_testimonial_layout_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wltp_testimonial_layout_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wltp_testimonial_layout_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wltp_testimonial_layout_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wltp_testimonial_layout_2'"
