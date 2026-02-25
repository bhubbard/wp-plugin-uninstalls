#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jivosite_token'
wp option delete 'jivosite_widget_id'
wp option delete 'jivosite_lang_code'
wp option delete 'jivosite_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jivosite_%'"

