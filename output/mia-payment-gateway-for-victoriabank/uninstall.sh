#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mia_settings'
wp option delete 'miapg_db_version'

# Delete Transients
wp transient delete 'miapg_access_token'

