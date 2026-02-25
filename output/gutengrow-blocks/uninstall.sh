#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutengrow_blocks_status'
wp option delete 'gutengrow_stripe_settings'
wp option delete 'gutengrow_instagram_settings'
wp option delete 'gutengrow_db_version'
wp option delete 'gutengrow_google_sheets_settings'
wp option delete 'gutengrow_stripe_test_secret_key'
wp option delete 'gutengrow_stripe_live_secret_key'
wp option delete 'gutengrow_stripe_configured'
wp option delete 'gutengrow_stripe_products'
wp option delete 'stripe_products'
wp option delete 'gutengrow_products'
wp option delete 'gutengrow_stripe_currency'
wp option delete 'gutengrow_stripe_currency_symbol'
wp option delete 'gutengrow_stripe_publishable_key'
wp option delete 'gutengrow_stripe_success_page'
wp option delete 'gutengrow_stripe_cancel_page'
wp option delete 'stripe_test_secret_key'
wp option delete 'stripe_live_secret_key'

