#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lhcfwp_scan_state'
wp option delete 'lhcfwp_settings'

# Delete Transients
wp transient delete 'lhcfwp_bulk_fix_state'

