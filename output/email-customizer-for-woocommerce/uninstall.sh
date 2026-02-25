#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwecmf_since'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'active_sitewide_plugins'
wp option delete 'thwecmf_misc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_reviewed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_reviewed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_reviewed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_reviewed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwecmf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwecmf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwecmf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwecmf_deactivation_snooze'"
