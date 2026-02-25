#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlio_api_url'
wp option delete 'rbd_core_review_engine_url_updated'
wp option delete 'rbd_core_review_engine_url'
wp option delete 'RBD_CORE_VALID'
wp option delete 'rbd_core_hipaa_compliance'

# Delete Transients
wp transient delete 'rbd_core_api_call'

