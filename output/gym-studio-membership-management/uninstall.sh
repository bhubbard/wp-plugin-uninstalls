#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fitsoft_livekey'
wp option delete 'fitsoft_accesskey'
wp option delete 'my_fitsoft_options'
wp option delete 'fitsoft_previewurl'
wp option delete 'my_fitsoft_color_options'
wp option delete 'my_fitsoft_hovermenu_options'
wp option delete 'my_fitsoft_chat_options'
wp option delete 'my_fitsoft_membership_options'
wp option delete 'fitsoft_membership_plugin_version'

