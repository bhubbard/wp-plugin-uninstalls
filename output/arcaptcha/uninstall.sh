#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arcaptcha_api_key'
wp option delete 'arcaptcha_theme'
wp option delete 'arcaptcha_language'
wp option delete 'arcaptcha_color'
wp option delete 'arcaptcha_size'
wp option delete 'arcaptcha_secret_key'

