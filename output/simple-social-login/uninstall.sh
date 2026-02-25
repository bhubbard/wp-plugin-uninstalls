#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'astoundify_simple_social_login'
wp option delete 'astoundify_simple_social_login_facebook'
wp option delete 'astoundify_simple_social_login_google'
wp option delete 'astoundify_simple_social_login_twitter'

