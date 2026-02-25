#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emwa_roles'
wp option delete 'emwaAdminbar'
wp option delete 'emwa_settings'
wp option delete 'emwa_role_string'
wp option delete 'emwaHelp'
wp option delete 'emwa_roles_cap_added'

