#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'awef_toc_cache_cleared'
wp transient delete 'awef_llms_written'
wp transient delete 'awef_llms_write_failed'

