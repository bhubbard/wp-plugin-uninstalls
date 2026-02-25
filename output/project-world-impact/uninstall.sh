#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpwi_design_settings'
wp option delete 'mpwi_access_token'
wp option delete 'mpwi_gtm_container_id'
wp option delete 'mpwi_enable_gtm'
wp option delete 'mpwi_settings'

# Delete Transients
wp transient delete 'mpwi_flash_message'

