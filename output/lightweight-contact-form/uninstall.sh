#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcf_recaptcha_v3_secret_key'
wp option delete 'lcf_recaptcha_v3_site_key'

