#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gflc_enabled'
wp option delete 'gflc_language_override'
wp option delete 'gflc_pro_provider'
wp option delete 'gflc_recaptcha_site_key'
wp option delete 'gflc_recaptcha_secret_key'
wp option delete 'gflc_hcaptcha_site_key'
wp option delete 'gflc_hcaptcha_secret_key'

