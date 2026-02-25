#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'engagebay_livechat_rest_api'
wp option delete 'engagebay_livechat_domain'
wp option delete 'engagebay_livechat_email'
wp option delete 'engagebay_livechat_password'
wp option delete 'engagebay_livechat_js_api'
wp option delete 'engagebay_livechat_enabled'

