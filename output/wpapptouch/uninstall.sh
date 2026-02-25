#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wapt_current_theme'
wp option delete 'wapt_user_agents'
wp option delete 'wapt_current_version'

