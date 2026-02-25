#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'travel_insurance_token'
wp option delete 'travel_insurance_width'
wp option delete 'travel_insurance_height'

