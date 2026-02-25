#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ycd_redirect'
wp option delete 'ycd-user-roles'
wp option delete 'ycd-delete-data'
wp option delete 'ycd-hide-coming-soon-menu'
wp option delete 'ycd-print-scripts-to-page'
wp option delete 'ycd-hide-editor-media-button'
wp option delete 'ycd-disable-google-fonts'
wp option delete 'YcdShowNextTime'
wp option delete 'YcdUsageDays'
wp option delete 'YcdDontShowReviewNotice'
wp option delete 'YcdInserted'
wp option delete 'ycdComingSoonSettings'
wp option delete 'woocommerce_cart_expires'
wp option delete 'YcdInstallDate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ycd_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ycd_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ycd_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ycd_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ycd_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ycd_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ycd_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ycd_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ycd-display-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ycd-display-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ycd-display-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ycd-display-settings'"
