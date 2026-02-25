#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mpaqt_eauth_value'
wp option delete 'woocommerce_mpaqt_remote_url'
wp option delete 'mpaqt_consumer_key'
wp option delete 'mpaqt_consumer_secret'

# Delete Transients
wp transient delete 'mpaqt_api_key_generated'
wp transient delete 'mpaqt_api_key_error'

