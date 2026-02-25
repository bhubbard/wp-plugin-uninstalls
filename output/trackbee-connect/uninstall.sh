#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trackbee_application_password'
wp option delete 'trackbee_site_url'
wp option delete 'trackbee_pixel_api_key'
wp option delete 'trackbee_api_key'

# Delete Transients
wp transient delete 'trackbee_error'
wp transient delete 'trackbee_tech_error'

