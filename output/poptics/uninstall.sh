#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poptics_onboard_settings'
wp option delete 'poptics_onboard_details'
wp option delete 'poptics_settings'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_ab_testing_campaigns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_ab_testing_campaigns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_ab_testing_campaigns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_ab_testing_campaigns'"
