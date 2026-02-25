#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hcaptcha_api_key'
wp option delete 'hcaptcha_lang'
wp option delete 'hcaptcha_background'
wp option delete 'hcaptcha_border'

