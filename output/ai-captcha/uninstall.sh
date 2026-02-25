#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_captcha_site_key'
wp option delete 'ai_captcha_secret_key'
wp option delete 'ai_captcha_forms'

