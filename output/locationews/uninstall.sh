#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'locationews_options'
wp option delete 'locationews_user'
wp option delete 'locationews_json_settings'
wp option delete 'locationews_activated'
wp option delete '_locationews_trash'
wp option delete '_locationews_user'

