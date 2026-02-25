#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adcaptcha_api_key'
wp option delete 'adcaptcha_placement_id'
wp option delete 'adcaptcha_render_captcha'
wp option delete 'adcaptcha_selected_plugins'
wp option delete 'experimental_disable_wc_checkout_endpoint'
wp option delete 'adcaptcha_wc_checkout_optional_trigger'

