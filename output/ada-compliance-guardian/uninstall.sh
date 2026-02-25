#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adacogu_plan_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adacogu_auto_alt_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adacogu_auto_alt_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adacogu_auto_alt_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adacogu_auto_alt_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adacogu_auto_alt_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adacogu_auto_alt_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adacogu_auto_alt_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adacogu_auto_alt_generated'"
