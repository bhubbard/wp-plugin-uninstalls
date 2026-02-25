#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ftb_widget_key'
wp option delete 'ftb_widget_style'
wp option delete 'ftb_widget_button_url'
wp option delete 'ftb_widget_button_id'

