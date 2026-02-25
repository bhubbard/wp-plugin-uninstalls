#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vmerf_version'
wp option delete 'vmerf_htaccess'
wp option delete 'vmerf_htaccess_warning'
wp option delete 'vmerf_banned_ips'
wp option delete 'vmerf_banned_referers'
wp option delete 'vmerf_auto_update'
wp option delete 'vmerf_auto_update_time'
wp option delete 'vmerf_referers'
wp option delete 'vmerf_htbackup'
wp option delete 'vmerf_wp_version'
wp option delete 'vmerf_settings'

