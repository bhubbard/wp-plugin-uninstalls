#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toast_post_types'
wp option delete 'toast_enable'
wp option delete 'default_toast_time'
wp option delete 'toast_auth_visible'
wp option delete 'toast_new_tab'

