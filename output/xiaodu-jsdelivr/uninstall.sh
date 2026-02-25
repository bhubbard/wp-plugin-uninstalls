#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xiaodu_jsdelivr_data'

# Delete Transients
wp transient delete 'xiaodu_jsdelivr_lock'
wp transient delete 'xiaodu_jsdelivr_api_result'
wp transient delete 'xiaodu_jsdelivr_api_resp'

