#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmagazine_modules_lite_activated_time'
wp option delete 'wpmagazine_modules_lite_upgrade_premium'
wp option delete 'wpmagazine_modules_lite_category_options'

# Delete Transients
wp transient delete 'wpmagazine-modules-lite-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmagazine_modules_lite_ignore_theme_review_notice'"
