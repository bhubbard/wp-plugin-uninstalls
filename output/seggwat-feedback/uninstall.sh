#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seggwat_project_key'
wp option delete 'seggwat_button_color'
wp option delete 'seggwat_button_position'
wp option delete 'seggwat_default_behavior'
wp option delete 'seggwat_language'
wp option delete 'seggwat_show_powered_by'

