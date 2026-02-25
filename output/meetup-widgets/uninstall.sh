#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vs_meet_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vsmeet_user_events_%' OR option_name LIKE '_site_transient_vsmeet_user_events_%'"

