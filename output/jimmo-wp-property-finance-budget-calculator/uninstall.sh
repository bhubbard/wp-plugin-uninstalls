#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_credits'"
wp option delete 'jimmo_wp_property_finance_budget_calculator_display_credits'

# Delete Transients
wp transient delete 'jimmo_wp_property_finance_budget_calculator_activation_notice'

