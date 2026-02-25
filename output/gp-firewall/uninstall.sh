#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_waffirewall'

# Delete Transients
wp transient delete 'waffirewall_ckey'

