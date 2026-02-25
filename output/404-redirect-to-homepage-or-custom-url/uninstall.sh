#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_404_redirect_enabled'
wp option delete 'dp_404_redirect_url'

# Delete Transients
wp transient delete 'dp_404_show_tracking_notice'

