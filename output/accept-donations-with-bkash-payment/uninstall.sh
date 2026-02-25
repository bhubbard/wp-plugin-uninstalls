#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adbkp_sandbox_mode'
wp option delete 'adbkp_username'
wp option delete 'adbkp_password'
wp option delete 'adbkp_app_key'
wp option delete 'adbkp_app_secret'

