#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'achtm_google_measurement_id'
wp option delete 'achtm_google_anaytics_code'
wp option delete 'achtm_tag_manager_id'

# Delete Transients
wp transient delete 'achtm-admin-notice-on-activation'

