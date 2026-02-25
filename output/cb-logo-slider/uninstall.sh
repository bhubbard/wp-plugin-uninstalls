#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbls_munber_of_images'
wp option delete 'cbls_controls'
wp option delete 'cbls_pagination'
wp option delete 'cbls_slide_speed'
wp option delete 'cbls_navigation_text_next'
wp option delete 'cbls_navigation_text_prev'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbls_logo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbls_logo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbls_logo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbls_logo_url'"
