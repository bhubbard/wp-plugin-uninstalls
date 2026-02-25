#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sassify'

# Delete Transients
wp transient delete 'sassify_filemtimes'
wp transient delete 'sassify_variables_signature'

