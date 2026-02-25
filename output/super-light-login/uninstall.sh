#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'register_text_field'
wp option delete 'register_url_field'
wp option delete 'logo_settings_one'
wp option delete 'logo_settings_url'

