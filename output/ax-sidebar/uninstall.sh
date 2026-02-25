#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'axSidebar_db_version'
wp option delete 'axSidebar_code_version'
wp option delete 'ax_sidebar_widget_options'

