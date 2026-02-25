#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'jetpack_active_modules'
wp option delete 'wp_mobile_disable'
wp option delete 'wordpress-https_ssl_host'

