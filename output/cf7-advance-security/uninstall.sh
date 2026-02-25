#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7as_captcha'
wp option delete 'cf7as_hidden_captcha'
wp option delete 'cf7as_email_confirmation'
wp option delete 'cf7as-inlinecss'

