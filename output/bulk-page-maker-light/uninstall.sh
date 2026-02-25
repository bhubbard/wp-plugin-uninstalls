#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpm_installed'
wp option delete 'BPM_INSTALLED'
wp option delete 'BPM_VERSION'

# Delete Transients
wp transient delete 'bpmaker_all_pages'
wp transient delete 'bpmaker_pages_count'

