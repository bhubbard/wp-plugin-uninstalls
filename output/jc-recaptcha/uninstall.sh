#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'public-key'
wp option delete 'private-key'
wp option delete 'comment_form'
wp option delete 'login_form'
wp option delete 'register_form'
wp option delete 'ninja_form'
wp option delete 'cf7_form'
wp option delete 'is_user_logged'

