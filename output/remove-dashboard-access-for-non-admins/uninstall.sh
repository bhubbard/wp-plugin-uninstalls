#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rda_access_switch'
wp option delete 'rda_access_cap'
wp option delete 'rda_enable_profile'
wp option delete 'rda_redirect_url'
wp option delete 'rda_login_message'
wp option delete 'rda-settings'

