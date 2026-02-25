#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookiefy_consent_logs'
wp option delete 'cookiefy_domain_id'
wp option delete 'cookiefy_ui_theme'
wp option delete 'cookiefy_core_mode'
wp option delete 'cookiefy_enabled'
wp option delete 'cookiefy_custom_config'

