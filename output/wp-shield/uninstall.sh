#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_shield_enabled'
wp option delete 'wp_shield_username'
wp option delete 'wp_shield_password'

