#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'elex_discount_per_payment_method_options'
wp option delete 'elex_wfp_discount_per_payment_method_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elex_wfp_discount_per_payment_method_available_%'"

