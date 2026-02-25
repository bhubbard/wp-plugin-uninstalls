#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payfeez_bacs'
wp option delete 'payfeez_paypal'
wp option delete 'payfeez_rmcsa'
wp option delete 'payfeez_stancer'
wp option delete 'payfeez_stripe'

