#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharplogin_settings'
wp option delete 'sl_login_attempts_settings'
wp option delete 'sharplogin_page'
wp option delete 'sharplogin_redirect'

# Delete Transients
wp transient delete 'attempted_login'

