#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_madmimi_version'
wp option delete 'gf_madmimi_settings'
wp option delete 'recently_activated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_remote_ad' OR option_name LIKE '_site_transient_%_remote_ad'"

