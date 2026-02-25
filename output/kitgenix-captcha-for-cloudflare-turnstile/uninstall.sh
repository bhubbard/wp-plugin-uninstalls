#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kitgenix_captcha_for_cloudflare_turnstile_metrics'
wp option delete 'kitgenix_captcha_for_cloudflare_turnstile_settings'
wp option delete 'kitgenix_turnstile_last_verify'

# Delete Transients
wp transient delete 'kitgenix_captcha_for_cloudflare_turnstile_do_activation_redirect'

