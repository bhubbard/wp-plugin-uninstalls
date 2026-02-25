#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donate_ribbon_url'
wp option delete 'donate_ribbon_title'
wp option delete 'donate_ribbon_user_offset'
wp option delete 'donate_ribbon_admin_offset'

