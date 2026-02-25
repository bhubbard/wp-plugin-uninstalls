#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'search_limiter_blocker_option_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'visitor_ip_count-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-deleteafter30min'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_visitor_ip_block%' OR option_name LIKE '_site_transient_visitor_ip_block%'"

