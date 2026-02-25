#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctcl_stripe_display_label'
wp option delete 'ctcl_activate_stripe'
wp option delete 'ctcl_stripe_test_mode'
wp option delete 'ctc_stripe_test_publishable_key'
wp option delete 'ctc_stripe_test_secret_key'
wp option delete 'ctc_stripe_live_publishable_key'
wp option delete 'ctc_stripe_live_secret_key'
wp option delete 'ctcl_currency'

