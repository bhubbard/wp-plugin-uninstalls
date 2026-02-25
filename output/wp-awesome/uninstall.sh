#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPAWESOME_ENABLE_CONTEXT_MENUS'
wp option delete 'WPAWESOME_ENABLE_FAST_LOGIN'
wp option delete 'WPAWESOME_ENABLE_HUGE_UPLOAD'

