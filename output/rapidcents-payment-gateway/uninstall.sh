#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_rc_credentials'
wp option delete '_rc_authorization_code'
wp option delete '_rc_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_rc_businesses_%'"

# Delete Transients
wp transient delete '_yc_rc_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_refunds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_refunds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_refunds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_refunds'"
