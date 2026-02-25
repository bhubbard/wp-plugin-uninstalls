#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_exacttarget_settings'
wp option delete 'gf_exacttarget_version'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'extr_lists_all'
wp transient delete 'extr_lists_raw'
wp transient delete 'extr_lists'

