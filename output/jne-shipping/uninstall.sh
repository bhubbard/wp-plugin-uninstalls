#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jne_shipping_email'
wp option delete 'jne_shipping_donation'
wp option delete 'jne_shipping_onlist_status'
wp option delete 'jne_shipping_name'
wp option delete 'wpe_jneshipp_base_location'
wp option delete 'wpe_jneshipp_base_location_code'

