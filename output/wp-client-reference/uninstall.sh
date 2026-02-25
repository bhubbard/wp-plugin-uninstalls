#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpclientref_settings'
wp option delete '_wpclientref_settings_status'
wp option delete '_wpclientref_prev_post_type'

