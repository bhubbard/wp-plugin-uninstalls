#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
wp option delete 'thwcfd_since'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%'"
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_ship_to_destination'

# Delete Transients
wp transient delete 'thwcfd_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_review_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_review_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_review_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_review_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_review_skipped_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_review_skipped_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_review_skipped_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_review_skipped_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_review_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_review_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_review_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_review_dismissed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_reviewed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_reviewed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_reviewed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_reviewed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_discount_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_discount_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_discount_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_discount_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwcfd_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwcfd_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwcfd_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwcfd_deactivation_snooze'"
