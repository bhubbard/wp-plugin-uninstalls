#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonkasoft_logout_url'
wp option delete 'wonkasoft_logout_custom_url'
wp option delete 'wonkasoft_login_url'
wp option delete 'wonkasoft_login_custom_url'

