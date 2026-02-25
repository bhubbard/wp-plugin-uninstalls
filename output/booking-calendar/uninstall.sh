#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdevartec_settings'
wp option delete 'wp_user_roles'
wp option delete 'wpdevart_booking_version_new'
wp option delete 'wpdevart_booking_version'
wp option delete 'wpdevart_permissions'

