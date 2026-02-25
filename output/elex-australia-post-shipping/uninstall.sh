#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_wf_australia_post_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'australiapost_activation_status'
wp option delete 'auspost_customer_account_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"

# Delete Transients
wp transient delete 'wf_australia_post_quotes'

