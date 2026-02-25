#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ip_geo_block_statistics'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-live-log' OR option_name LIKE '_site_transient_%-live-log'"

