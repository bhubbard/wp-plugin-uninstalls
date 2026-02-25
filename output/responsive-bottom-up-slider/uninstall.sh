#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rs_enabled'
wp option delete 'rs_content'
wp option delete 'rs_display_secs'
wp option delete 'rs_hide_days'

