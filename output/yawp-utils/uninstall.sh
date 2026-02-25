#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yawp_utils_yawpchecked%'"
wp option delete 'yawp_utils_yawpchecked'
wp option delete 'yawp_utils_yawpname'
wp option delete 'yawp_utils_yawpemail'
wp option delete 'yawp_utils_yawpchecked2'
wp option delete 'yawp_utils_yawpadminyes'
wp option delete 'yawp_utils_SearchReplace'
wp option delete 'yawp_utils_sr_type'

