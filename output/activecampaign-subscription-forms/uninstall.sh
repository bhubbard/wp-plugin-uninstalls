#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settings_activecampaign'
wp option delete 'widget_activecampaign_widget'
wp option delete 'activecampaign_notice_index'

