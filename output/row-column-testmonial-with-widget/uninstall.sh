#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
