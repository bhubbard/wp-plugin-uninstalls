#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zmooz_custom_post_type_variable'
wp option delete 'zmooz_custom_plugin_default_user'
wp option delete 'zmooz_custom_plugin_default_slug'

