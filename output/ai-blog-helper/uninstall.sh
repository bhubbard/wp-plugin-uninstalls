#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiblhewi_options'

# Delete Transients
wp transient delete 'aiblhewi_cache'

