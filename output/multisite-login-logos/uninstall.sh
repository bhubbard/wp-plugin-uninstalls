#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multisite_login_logos_settings'
wp option delete 'multisite_login_logos_custom'

