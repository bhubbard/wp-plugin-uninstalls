#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpce_custom_css'
wp option delete 'wpce_custom_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpce_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpce_deactivation_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpce_deactivation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpce_deactivation_main_reason_%'"
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'wpce_installed_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
