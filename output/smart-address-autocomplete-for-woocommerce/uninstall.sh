#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_address_enable_extension'
wp option delete 'smart_address_api_key'
wp option delete 'smart_address_country_list'

# Delete Transients
wp transient delete 'smart_address_activation_redirect'

