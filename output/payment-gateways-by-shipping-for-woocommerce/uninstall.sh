#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_pgbsm_use_shipping_instance'
wp option delete 'alg_wc_pgbsm_reset_payment_method_on_totals'
wp option delete 'alg_wc_pgbsm_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

