#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_gdpr_cookies_content_settings'
wp option delete 'simple_gdpr_cookies_modal_settings'
wp option delete 'simple_gdpr_cookies_cookie_settings'

