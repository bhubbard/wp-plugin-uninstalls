#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allowed_menus'
wp option delete 'allowed_menus_roles'
wp option delete 'allowed_menus_users'

