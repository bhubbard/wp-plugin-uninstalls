#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'add_anchor_links_settings'

# Delete Transients
wp transient delete 'aal-admin-notice-activation'

