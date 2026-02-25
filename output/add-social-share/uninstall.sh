#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsocial-enable-plugin'
wp option delete 'wpsocial-enable-post'
wp option delete 'wpsocial-enable-page'
wp option delete 'wpsocial-enable-home'
wp option delete 'wpsocial-message-selection'
wp option delete 'wpsocial-custom-message'
wp option delete 'wpsocial-positioning'
wp option delete 'wpsocial-alignment'
wp option delete 'wpsocial-facebook'
wp option delete 'wpsocial-twitter'
wp option delete 'wpsocial-google'
wp option delete 'wpsocial-linkedin'
wp option delete 'wpsocial-pinterest'
wp option delete 'wpsocial-skins'

