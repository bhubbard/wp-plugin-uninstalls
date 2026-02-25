#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugin_err_%'"
wp option delete 'wmsimplecaptcha_activated_plugin_error'
wp option delete 'wmsimplecaptcha'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_per_page_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated_plugin_error'"

