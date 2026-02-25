#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbb_admin_panel_plugin_version'
wp option delete 'bbb_admin_panel_url'
wp option delete 'bbb_admin_panel_salt'
wp option delete 'bbb_admin_panel_permissions'
wp option delete 'bbb_db_version'
wp option delete 'mt_bbb_url'
wp option delete 'mt_salt'
wp option delete 'bbb_admin_panel_widget_title'

