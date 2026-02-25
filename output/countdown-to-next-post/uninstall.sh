#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scott_database'
wp option delete 'scott_values'
wp option delete 'widget_scott_timer'
wp option delete 'scott_timer_version'
wp option delete 'afdn_countdowntracker'
wp option delete 'afdn_countdownOptions'

