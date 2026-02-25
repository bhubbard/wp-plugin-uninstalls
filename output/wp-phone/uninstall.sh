#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_phone_is_registered_1'
wp option delete 'wp_phone_registration_data'
wp option delete 'wp_phone_number'

