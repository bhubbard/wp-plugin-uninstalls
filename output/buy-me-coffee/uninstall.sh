#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buymecoffee_payment_settings_paypal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'buymecoffee_payment_settings_%'"
wp option delete 'buymecoffee_payment_settings_stripe'
wp option delete 'buymecoffee_payment_setting'

