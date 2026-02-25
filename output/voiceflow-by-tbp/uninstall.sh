#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voiceflow_project_id'
wp option delete 'voiceflow_widget_title'
wp option delete 'voiceflow_widget_color'

