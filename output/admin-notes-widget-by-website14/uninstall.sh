#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'qanw_notes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qanw_rate_limit_%' OR option_name LIKE '_site_transient_qanw_rate_limit_%'"
wp transient delete 'qanw_notes_cache'

