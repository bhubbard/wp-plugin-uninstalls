#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'os_datahub_map_options'

# Delete Transients
wp transient delete 'osmap-activation-check'

