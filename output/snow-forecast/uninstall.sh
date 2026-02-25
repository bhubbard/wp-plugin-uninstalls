#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snow-forecast_country'
wp option delete 'snow-forecast_resort'
wp option delete 'snow-forecast_resort_encoded'
wp option delete 'snow-forecast_units'
wp option delete 'snow-forecast_size'
wp option delete 'snow-forecast_link'

