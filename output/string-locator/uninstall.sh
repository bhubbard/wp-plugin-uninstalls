#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'string-locator-search-history'

# Delete Transients
wp transient delete 'string-locator-search-overview'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_string-locator-search-files-%' OR option_name LIKE '_site_transient_string-locator-search-files-%'"

