#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phoenix_folding_stats'

# Delete Transients
wp transient delete 'phoenix_folding_stats'

