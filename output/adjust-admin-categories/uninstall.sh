#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aac_options'

# Delete Transients
wp transient delete 'post-updated'
wp transient delete 'post-error'

