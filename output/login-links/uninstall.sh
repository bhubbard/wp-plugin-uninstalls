#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'lgnl_total_user_count'
wp transient delete 'lgnl_user_list'

