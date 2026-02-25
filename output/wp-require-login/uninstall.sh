#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'require_login'
wp option delete 'require_login_first_notice'

