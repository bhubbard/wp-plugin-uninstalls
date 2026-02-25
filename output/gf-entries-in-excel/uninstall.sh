#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-active_installs' OR option_name LIKE '_site_transient_%-active_installs'"

