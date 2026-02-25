#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repeat_customer_message'
wp option delete 'guest_message'
wp option delete 'woocommerce_myaccount_page_id'

