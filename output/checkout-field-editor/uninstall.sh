#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfewp_checkout_fields_settings'

# Delete Transients
wp transient delete 'cfewp_activated'

