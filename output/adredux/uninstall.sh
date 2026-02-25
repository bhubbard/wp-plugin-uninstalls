#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adredux_settings'

# Delete Transients
wp transient delete 'adredux-activated'

