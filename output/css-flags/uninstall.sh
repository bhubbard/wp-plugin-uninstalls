#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CSS_Flags'

# Delete Transients
wp transient delete 'css-flags-all-countries'
wp transient delete 'css-flags-all-regions'

