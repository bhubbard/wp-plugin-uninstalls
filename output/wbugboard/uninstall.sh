#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbbd_general_settings'
wp option delete 'wbbd_allowed_roles'
wp option delete 'wbbd_email_settings'
wp option delete 'wbbd_team_users'

