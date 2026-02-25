#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cvmh_slideshow'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cvmh_slide_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cvmh_slide_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cvmh_slide_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cvmh_slide_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cvmh_slide_0'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cvmh_slide_0'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cvmh_slide_0'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cvmh_slide_0'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cvmh_slide_new_window'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cvmh_slide_new_window'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cvmh_slide_new_window'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cvmh_slide_new_window'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cvmh_slide_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cvmh_slide_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cvmh_slide_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cvmh_slide_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cvmh_slide_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cvmh_slide_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cvmh_slide_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cvmh_slide_link'"
