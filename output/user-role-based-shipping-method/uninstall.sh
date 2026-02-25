#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'pvalley_user_role_based_shipping'
wp option delete 'pvalley_user_role_based_shipping_rule_matrix'

