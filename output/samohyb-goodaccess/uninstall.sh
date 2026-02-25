#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'samohyb_ga_api_url'
wp option delete 'samohyb_ga_access_token'
wp option delete 'samohyb_ga_refresh_token'
wp option delete 'samohyb_ga_token'

# Delete Transients
wp transient delete 'samohyb_ga_access_response'
wp transient delete 'samohyb_ga_access_whitelist'

