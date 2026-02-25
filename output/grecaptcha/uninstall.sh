#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grecaptcha_site_key'
wp option delete 'grecaptcha_secret_key'
wp option delete 'grecaptcha_version'
wp option delete 'grecaptcha_theme'
wp option delete 'grecaptcha_v2_size'
wp option delete 'grecaptcha_v2_badge'
wp option delete 'grecaptcha_v3_threshold'

