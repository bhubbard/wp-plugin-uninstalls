#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'espn_headlines_options'

# Delete Transients
wp transient delete 'espn_headlines_admin'

