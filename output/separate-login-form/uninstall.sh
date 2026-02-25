#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slf_h_captcha'
wp option delete 'slf_h_captcha_sitekey'
wp option delete 'slf_h_captcha_secret'

