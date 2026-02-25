#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_vantiv_version'
wp option delete 'woocommerce_vantiv_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_setup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_setup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_setup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_setup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vantiv_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vantiv_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vantiv_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vantiv_refund_id'"
