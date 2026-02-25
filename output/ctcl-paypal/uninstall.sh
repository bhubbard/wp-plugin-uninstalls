#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctcl_activate_paypal'
wp option delete 'ctcl_paypal_client-id'
wp option delete 'ctcl_paypal_color_option'
wp option delete 'ctcl_paypal_enlable_card'
wp option delete 'ctcl_currency'

