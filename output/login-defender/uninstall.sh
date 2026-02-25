#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_defender_enabled'
wp option delete 'login_defender_custom_slug'

