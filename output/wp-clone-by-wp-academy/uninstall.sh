#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpclone_backups'
wp option delete 'wpclone_directory_scan'
wp option delete 'wpa_wpc_plugin_do_activation_redirect'
wp option delete 'wpa_activation_redirect_required'

