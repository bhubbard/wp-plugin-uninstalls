#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lfmastoken'
wp option delete 'lfmascache_timeout'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_f13lfmas%' OR option_name LIKE '_site_transient_f13lfmas%'"

