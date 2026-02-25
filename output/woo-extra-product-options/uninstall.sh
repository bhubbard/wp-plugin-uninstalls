#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwepof_since'
wp option delete 'thwepof_do_activation_redirect'
wp option delete 'thwepof_custom_product_fields'
wp option delete 'thwepof_custom_product_fields_bkp'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'removed_section'
wp transient delete 'reset_all_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepo_reviewed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepo_reviewed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepo_reviewed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepo_reviewed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepof_discount_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepof_discount_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepof_discount_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepof_discount_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwepof_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwepof_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwepof_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwepof_deactivation_snooze'"
