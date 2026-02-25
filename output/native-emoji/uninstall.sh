#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nep_native_emoji_active'
wp option delete 'nep_plugin_admin_activation'
wp option delete 'nep_plugin_close_panel'
wp option delete 'nep_plugin_comments_activation'
wp option delete 'nep_plugin_site_use_jquery'
wp option delete 'nep_plugin_show_on_mobile'
wp option delete 'nep_plugin_panel_color'
wp option delete 'nep_plugin_panel_position'
wp option delete 'nep_plugin_close_panel_comments'

