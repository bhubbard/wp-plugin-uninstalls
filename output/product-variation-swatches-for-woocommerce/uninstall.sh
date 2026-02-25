#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwvsf_since'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'thwvsf_skip_review_request_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_pa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_pa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_pa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_pa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_deactivation_snooze'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwvsf_discount_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwvsf_discount_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwvsf_discount_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwvsf_discount_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
