#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete '_mp_store_identificator'

# Delete Transients
wp transient delete 'mp_credentials_expired_result'

