#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'monitorlogin_email'
wp option delete 'monitorlogin_plugs'
wp option delete 'monitorlogin_themes'

