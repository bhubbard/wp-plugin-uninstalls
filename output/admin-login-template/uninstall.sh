#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alt_logo_url'
wp option delete 'alt_backlog_visibility'
wp option delete 'alt_template'
wp option delete 'alt_username'
wp option delete 'alt_logo_click_url'
wp option delete 'alt_password'
wp option delete 'alt_button'
wp option delete 'alt_remember_button'
wp option delete 'alt_lost_password'
wp option delete 'alt_success'
wp option delete 'alt_username_error'
wp option delete 'alt_password_error'
wp option delete 'alt_empty_username'
wp option delete 'alt_empty_password'

