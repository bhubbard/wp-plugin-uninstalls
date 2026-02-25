#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bread_auth_token'
wp option delete 'pickup_location_pickup_locations'
wp option delete 'woocommerce_store_phone'

