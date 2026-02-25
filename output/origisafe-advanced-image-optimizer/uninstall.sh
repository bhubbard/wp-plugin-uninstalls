#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsbc_webp_clean_sweep_originals_cursor'

# Delete Transients
wp transient delete 'hsbc_webp_job_lock'

