#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ow_username'
wp option delete 'ow_password'
wp option delete 'ow_autopost'
wp option delete 'ow_service_logins'

