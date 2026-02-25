#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyforms_custom_login_settings'
wp option delete 'buddyforms_registration_page'
wp option delete 'active_sitewide_plugins'

