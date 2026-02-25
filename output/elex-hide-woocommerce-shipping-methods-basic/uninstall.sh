#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'elex_hs_first_installation_msg'
wp option delete 'elex_hs_rules_to_hide_shipping_methods'
wp option delete 'elex_hs_rule_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'woocommerce_weight_unit'

