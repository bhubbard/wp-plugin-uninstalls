#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'pmusage_supported_php_versions'
wp transient delete 'pmusage_latest_wp_version'
wp transient delete 'pmusage_latest_php_version'
wp transient delete 'pmusage_mysql_eol_data'

