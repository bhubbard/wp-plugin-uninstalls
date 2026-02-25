#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lolmi_login_page_url'
wp option delete 'lolmi_logout_redirect_url'
wp option delete 'lolmi_login_redirect_url'

