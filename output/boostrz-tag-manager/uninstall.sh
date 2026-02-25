#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boostrz_api_token'
wp option delete 'boostrz_api_token_expiry'
wp option delete 'boostrz_current_website_selected'
wp option delete 'boostrz_option'

