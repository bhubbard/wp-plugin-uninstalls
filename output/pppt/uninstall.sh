#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugins_archive_result_post_notice_%' OR option_name LIKE '_site_transient_plugins_archive_result_post_notice_%'"

