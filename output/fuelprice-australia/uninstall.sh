#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'fuelprice_cities'
wp transient delete 'fuelprice_widget_types'
wp transient delete 'fuelprice_fuel_types'

