#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sjs_start'
wp option delete 'sjs_speed'
wp option delete 'sjs_delay'
wp option delete 'sjs_controls'
wp option delete 'sjs_pagination'

