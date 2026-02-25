#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reaktiv-custom-css'

# Delete Transients
wp transient delete 'rkvcss_check_protection_files'

