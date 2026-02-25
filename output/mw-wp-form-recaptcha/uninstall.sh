#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mw-wp-form-recaptcha-sitekey'
wp option delete 'mw-wp-form-recaptcha-centering'

