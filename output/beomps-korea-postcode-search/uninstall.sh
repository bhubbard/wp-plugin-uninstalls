#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'find_button_name'
wp option delete 'billing_email_layout'
wp option delete 'billing_last_name_layout'
wp option delete 'billing_company_layout'
wp option delete 'billing_city_layout'
wp option delete 'billing_phone_layout'
wp option delete 'shipping_last_name_layout'
wp option delete 'shipping_company_layout'
wp option delete 'shipping_city_layout'
wp option delete 'protocol_type'
wp option delete 'postcode_type'

