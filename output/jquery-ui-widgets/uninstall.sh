#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jquiw_options'

# Delete Transients
wp transient delete 'jquiw-admin-notice'

