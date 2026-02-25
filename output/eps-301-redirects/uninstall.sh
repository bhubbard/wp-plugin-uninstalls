#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eps_pointers'
wp option delete 'eps_redirects_404_log'
wp option delete '301-redirects-notices'
wp option delete 'eps_redirects_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_post_type_cache_%' OR option_name LIKE '_site_transient_post_type_cache_%'"

