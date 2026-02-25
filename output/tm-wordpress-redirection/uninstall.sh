#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_redirect_option'
wp option delete 'wp_redirect_option_content'
wp option delete 'wp_redirect_option_comment'
wp option delete 'wp_redirect_option_author'
wp option delete 'wp_redirect_option_exception'

