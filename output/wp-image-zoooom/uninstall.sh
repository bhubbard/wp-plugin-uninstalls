#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zoooom_settings'
wp option delete 'zoooom_general'
wp option delete 'fusion_options'
wp option delete 'zoooom_activation_time'
wp option delete 'zoooom_version'
wp option delete 'zoooom_dismiss_notice'

