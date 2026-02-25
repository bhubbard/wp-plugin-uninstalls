#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabnav_widget_enabled'
wp option delete 'tabnav_widget_language'
wp option delete 'tabnav_widget_color'
wp option delete 'tabnav_button_color'
wp option delete 'tabnav_button_size'
wp option delete 'tabnav_widget_size'
wp option delete 'tabnav_widget_location'
wp option delete 'tabnav_widget_color_enabled'
wp option delete 'tabnav_button_color_enabled'

