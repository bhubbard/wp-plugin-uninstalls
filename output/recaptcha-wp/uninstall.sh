#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_recaptcha_comment'
wp option delete 'wp_recaptcha_register'
wp option delete 'p_site_key'
wp option delete 'p_secret_key'
wp option delete 'p_addtional_scripts'

