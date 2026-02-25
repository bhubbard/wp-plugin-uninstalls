#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fast_stripe_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
