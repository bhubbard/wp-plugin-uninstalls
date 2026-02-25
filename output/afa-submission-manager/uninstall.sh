#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afasm_settings_staff_options'
wp option delete 'AFASM_ACCESS_TOKEN_SECRET_KEY'
wp option delete 'AFASM_REFRESH_TOKEN_SECRET_KEY'

