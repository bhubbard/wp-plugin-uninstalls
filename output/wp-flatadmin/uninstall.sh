#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_url_title'
wp option delete 'custom_login_logo_url'
wp option delete 'wp_flat_admin_custom_logo_path'

