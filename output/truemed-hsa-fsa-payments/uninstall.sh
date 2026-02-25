#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'truemed_hsa_fsa_idempotency_secret'
wp option delete 'woocommerce_truemed_hsa_fsa_payments_settings'

