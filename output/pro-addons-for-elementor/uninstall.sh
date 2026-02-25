#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pafe_review_notification_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pafe_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pafe_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pafe_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pafe_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pafe_template_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pafe_template_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pafe_template_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pafe_template_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pafe_template_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pafe_template_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pafe_template_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pafe_template_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
