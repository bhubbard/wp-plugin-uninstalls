#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vision_db_version'
wp option delete 'vision_activated'
wp option delete 'vision_settings'

