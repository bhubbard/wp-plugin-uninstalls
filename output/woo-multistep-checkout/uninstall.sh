#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwmscf_since'
wp option delete 'THWMSC_SETTINGS'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmscf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmscf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmscf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmscf_deactivation_snooze'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmsc_reviewed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmsc_reviewed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmsc_reviewed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmsc_reviewed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwmscf_discount_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwmscf_discount_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwmscf_discount_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwmscf_discount_popup'"
