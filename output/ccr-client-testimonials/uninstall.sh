#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_testimonial_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_testimonial_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_testimonial_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_testimonial_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_testimonial_client_designaion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_testimonial_client_designaion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_testimonial_client_designaion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_testimonial_client_designaion'"
