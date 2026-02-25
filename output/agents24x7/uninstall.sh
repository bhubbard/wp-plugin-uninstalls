#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agents24x7_version'

# Delete Transients
wp transient delete 'agents24x7_message'

