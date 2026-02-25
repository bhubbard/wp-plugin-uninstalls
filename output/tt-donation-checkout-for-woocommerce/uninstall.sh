#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donation_tip_checkout_enabled'
wp option delete 'donation_tip_checkout_message'
wp option delete 'donation_tip_checkout_button'
wp option delete 'donation_tip_checkout_label'
wp option delete 'donation_tip_checkout_default_amount'
wp option delete 'donation_tip_checkout_min_amount'
wp option delete 'donation_tip_checkout_taxable'
wp option delete 'donation_tip_checkout_minorder'

