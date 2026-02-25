#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcdf_checkout_first_name'
wp option delete 'rcdf_checkout_last_name'
wp option delete 'rcdf_checkout_phone'
wp option delete 'rcdf_checkout_email'
wp option delete 'rcdf_checkout_product_name'
wp option delete 'rcdf_checkout_price'
wp option delete 'rcdf_checkout_trigger_element'
wp option delete 'rcdf_checkout_event_el'

