#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'wc_weareplanet_base_gateway_url'
wp option delete 'woocommerce_manage_stock'
wp option delete 'ywpo_order_status'

# Delete Transients
wp transient delete 'wc_weareplanet_payment_methods'

# Clear Cron Jobs
wp cron event delete 'weareplanet_five_minutes_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weareplanet-previous-wc-min-version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weareplanet-previous-wc-min-version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weareplanet-previous-wc-min-version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weareplanet-previous-wc-min-version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weareplanet_subscription_space_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weareplanet_subscription_space_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weareplanet_subscription_space_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weareplanet_subscription_space_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weareplanet_subscription_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weareplanet_subscription_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weareplanet_subscription_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weareplanet_subscription_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weareplanet_subscription_failed_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weareplanet_subscription_failed_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weareplanet_subscription_failed_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weareplanet_subscription_failed_renewal'"
