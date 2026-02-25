#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timify_settings'
wp option delete 'timify_reading_settings'
wp option delete 'timify_word_settings'
wp option delete 'timify_view_settings'
wp option delete 'timify_admin_notice_info'
wp option delete 'track_transient'
wp option delete 'has_transient'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timify_admin_notice_time_%' OR option_name LIKE '_site_transient_timify_admin_notice_time_%'"

