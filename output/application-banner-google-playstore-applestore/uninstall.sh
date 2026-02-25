#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sahu_app_applestore_link'
wp option delete 'sahu_app_googlestore_link'
wp option delete 'sahu_app_googlestore_com'
wp option delete 'sahu_app_appname'
wp option delete 'sahu_app_appslogan'
wp option delete 'sahu_app_app_icon_url'
wp option delete 'sahu_app_color_code'
wp option delete 'sahu_app_color_code_font'

