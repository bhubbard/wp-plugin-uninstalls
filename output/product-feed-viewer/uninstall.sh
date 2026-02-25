#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pfv_payment'
wp option delete 'pfv_license'
wp option delete 'pfv_cache_timeout'
wp option delete 'pfv_plugin_error'
wp option delete 'pfv_db_version'

