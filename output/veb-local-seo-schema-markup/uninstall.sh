#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'business_name'
wp option delete 'street_address'
wp option delete 'locality'
wp option delete 'region'
wp option delete 'postal_code'
wp option delete 'country'
wp option delete 'phone'
wp option delete 'opening_hours'
wp option delete 'price_range'

