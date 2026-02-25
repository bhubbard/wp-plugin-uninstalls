#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'northstar_activate'
wp option delete 'northstar_message'
wp option delete 'northstar_text_color'
wp option delete 'northstar_bg_color'

