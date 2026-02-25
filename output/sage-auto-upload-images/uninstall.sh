#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sauimg_settings'

# Delete Transients
wp transient delete 'sauimg_upload_result'

