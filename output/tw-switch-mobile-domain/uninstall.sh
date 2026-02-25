#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tw_mobile_domain'
wp option delete 'tw_mobile_theme'
wp option delete 'tw_bot_theme'
wp option delete 'tw_user_bot_theme'

