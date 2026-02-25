#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webchatagent_settings'

# Delete Transients
wp transient delete 'webchatagent_transient_data'

