#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'key_field'
wp option delete 'login_field'
wp option delete 'app_field'
wp option delete 'password_field'
wp option delete 'default_voice_field'
wp option delete 'selector_field'
wp option delete 'exclude_selector_field'

