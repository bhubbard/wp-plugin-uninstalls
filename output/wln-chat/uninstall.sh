#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'position_option'
wp option delete 'wln_settings_page'
wp option delete 'wln_register_plugin_settings'
wp option delete 'wln-plugin-settings-group-fields'
wp option delete 'phone_option'
wp option delete 'message_option'
wp option delete 'texticon_option'
wp option delete 'position_option_v'

