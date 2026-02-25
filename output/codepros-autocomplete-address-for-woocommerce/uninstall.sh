#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpai_autocomplete_api_key'
wp option delete 'cpai_autocomplete_enable_for_billing'
wp option delete 'cpai_autocomplete_enable_for_shipping'

