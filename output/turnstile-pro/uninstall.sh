#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cftpx_site_key'
wp option delete 'cftpx_secret_key'
wp option delete 'cftpx_visible_mode'
wp option delete 'cftpx_enabled_forms'
wp option delete 'cftpx_custom_error'
wp option delete 'cftpx_ip_whitelist'

