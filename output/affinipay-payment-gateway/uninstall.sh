#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affinipay_public_key'
wp option delete 'affinipay_secret_key'
wp option delete 'affinipay_operating_mode'
wp option delete 'affinipay_receipt_page'
wp option delete 'affinipay_mode'
wp option delete 'affinipay_test_public_key'
wp option delete 'affinipay_test_secret_key'
wp option delete 'affinipay_test_account_id'
wp option delete 'affinipay_live_public_key'
wp option delete 'affinipay_live_secret_key'
wp option delete 'affinipay_live_account_id'

