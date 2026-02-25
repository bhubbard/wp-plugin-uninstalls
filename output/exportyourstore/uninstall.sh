#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eys_woocommerce_api_consumer_key'
wp option delete 'eys_woocommerce_api_consumer_secret'
wp option delete 'eys_exportyourstore_returned_user_id'

