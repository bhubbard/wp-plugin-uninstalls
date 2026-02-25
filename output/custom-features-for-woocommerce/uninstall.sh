#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cffw_store_close_status'
wp option delete 'cffw_store_close_message'
wp option delete 'cffw_store_close_still_date'
wp option delete 'cffw_cart_auto_update'

