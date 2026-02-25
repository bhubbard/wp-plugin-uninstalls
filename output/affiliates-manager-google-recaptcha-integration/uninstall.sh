#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpam_google_recaptcha_site_key'
wp option delete 'wpam_google_recaptcha_secret_key'

