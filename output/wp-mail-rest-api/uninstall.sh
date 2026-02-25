#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mail_rest_api_target_urls'
wp option delete 'wp_mail_rest_api_disable_smtp'

