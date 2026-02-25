#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cache_timeout'
wp option delete 'token'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpgrs%' OR option_name LIKE '_site_transient_wpgrs%'"

