#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dabl_rr_dbv'

# Delete Transients
wp transient delete 'dabl_rr_show_setup_notice'

