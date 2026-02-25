#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'captcha-setting-sitekey'
wp option delete 'captcha-setting-secret'
wp option delete 'lf-remember-me-show-lead'

