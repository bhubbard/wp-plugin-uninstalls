#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poststats'

# Delete Transients
wp transient delete 'poststats_widget'

