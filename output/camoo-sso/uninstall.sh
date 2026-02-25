#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_camoo_sso_options'
wp option delete 'wp_camoo_sso_db_version'

