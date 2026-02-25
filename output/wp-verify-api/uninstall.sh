#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_verify_api_email_text'
wp option delete 'wp_verify_api_code_expire_time'
wp option delete 'wp_verify_api_code_digits'

