#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automator_for_paypal_mode'
wp option delete 'automator_for_paypal_test_client_id'
wp option delete 'automator_for_paypal_test_client_secret'
wp option delete 'automator_for_paypal_test_webhook_id'
wp option delete 'automator_for_paypal_live_client_id'
wp option delete 'automator_for_paypal_live_client_secret'
wp option delete 'automator_for_paypal_live_webhook_id'

