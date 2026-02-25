#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpz_payments_settings'
wp option delete 'wpz_payments_first_activate'
wp option delete 'wpz_payments_notice_hidden'
wp option delete 'wpz_payments_debug_log'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpz_payments_stripe_intent_%' OR option_name LIKE '_site_transient_wpz_payments_stripe_intent_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pending_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pending_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pending_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pending_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_internal_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_internal_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_internal_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_internal_notes'"
