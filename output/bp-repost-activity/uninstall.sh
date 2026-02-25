#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bprpa_enable_setting'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bprpa_activity_%' OR option_name LIKE '_site_transient_bprpa_activity_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bprpa_media_activity_%' OR option_name LIKE '_site_transient_bprpa_media_activity_%'"

