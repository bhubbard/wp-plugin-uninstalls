#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'greenhouse_job_board_settings'

# Delete Transients
wp transient delete 'ghjb_json'
wp transient delete 'ghjb_jobs'

