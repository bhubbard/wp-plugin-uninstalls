#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbci_shopper_rewards_ignore_categories'
wp option delete 'pbci_shopper_rewards_redemption_options'
wp option delete 'pbci_shopper_rewards_name'
wp option delete 'pbci_shopper_rewards_more_points_needed_format'
wp option delete 'pbci_shopper_rewards_days_to_use_coupon'
wp option delete 'pbci_shopper_rewards_redemption_labels'
wp option delete 'pbci_shopper_rewards_points_per_currency_unit'
wp option delete 'pbci_shopper_rewards_terms_format'
wp option delete 'pbci_shopper_rewards_redemption_types'
wp option delete 'pbci_shopper_rewards_per_currency_unit'
wp option delete 'pbci_shopper_rewards_powered_by'
wp option delete 'pbci_shopper_rewards_per_per_dollar'
wp option delete 'user_account_url'
wp option delete 'pbci_messages'

