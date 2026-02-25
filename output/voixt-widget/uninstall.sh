#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voixt_agent_id'
wp option delete 'voixt_widget_style'
wp option delete 'voixt_widget_position'

