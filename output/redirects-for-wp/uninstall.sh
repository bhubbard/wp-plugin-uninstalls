#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_301_redirects'
wp option delete 'wp_301_redirects_wildcard'
wp option delete 'wp301redirects_hide_btl_notice'
wp option delete 'wp301redirects_version'

# Delete Transients
wp transient delete 'wp_301_redirects_import_info'

