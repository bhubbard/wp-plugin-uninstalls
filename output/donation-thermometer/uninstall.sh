#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thermometer_options'
wp option delete 'thermometer_style'

# Delete Transients
wp transient delete 'therm_activation_notice'

