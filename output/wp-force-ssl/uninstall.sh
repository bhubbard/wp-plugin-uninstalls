#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wpssl_tests_results'
wp transient delete 'wpfs_ssl_status'
wp transient delete 'update_plugins'

