#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_yd_wc_2co_settings'
wp option delete 'wc_2co-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd2co_tnx_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd2co_tnx_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd2co_tnx_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd2co_tnx_id'"
