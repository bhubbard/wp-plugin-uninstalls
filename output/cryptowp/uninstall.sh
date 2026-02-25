#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cryptowp'

# Delete Transients
wp transient delete 'cryptowp_autorefresh'

