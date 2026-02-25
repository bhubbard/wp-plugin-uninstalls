#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webgl_success_msg'
wp option delete 'webgl_fail_msg'
wp option delete 'stlviewer_delete_settings'

