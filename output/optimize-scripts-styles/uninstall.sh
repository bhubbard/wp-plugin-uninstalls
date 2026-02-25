#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spos_settings'

# Delete Transients
wp transient delete 'spos-activation'

