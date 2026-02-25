#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'address_autocomplete_api_key'
wp option delete 'address_autocomplete_target_selectors'
wp option delete 'address_autocomplete_place_type'
wp option delete 'address_autocomplete_country'

