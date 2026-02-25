#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coinleywp_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'coinleywp_needs_onboarding'
wp option delete 'coinleywp_activation_redirect'
wp option delete 'coinleywp_onboarding_dismissed'
wp option delete 'coinleywp_merchant_wallets_full'
wp option delete 'coinleywp_enabled_networks'

# Delete Transients
wp transient delete 'coinleywp_merchant_wallets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_usd' OR option_name LIKE '_site_transient_%_usd'"

