#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ris_cf_captcha_cloudflare_site_key'
wp option delete 'ris_cf_captcha_cloudflare_secret_key'
wp option delete 'ris_cf_captcha_enable_captcha_on_forms'

