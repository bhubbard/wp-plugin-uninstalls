#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's_not_for_logged_in_user'
wp option delete 's_ip_list'
wp option delete 's_ua_list'
wp option delete 's_redirect_url'

