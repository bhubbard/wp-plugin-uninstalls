#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_emailplatform_dismissed_notices'
wp transient delete 'empwc_lists'

