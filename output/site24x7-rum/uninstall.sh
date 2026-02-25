#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's247RumKeyDB'
wp option delete 's247Datacentre'
wp option delete 's247ReplayToggle'
wp option delete 'maskInputText'
wp option delete 'maskAllText'

