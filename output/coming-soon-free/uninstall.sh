#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tv_coming_soon'

# Delete Transients
wp transient delete 'show_coming_soon_notice'

