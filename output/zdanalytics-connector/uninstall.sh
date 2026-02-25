#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zdac_ga4_measurement_id'
wp option delete 'zdac_gtm_container_id'
wp option delete 'zdac_require_consent'
wp option delete 'zdac_exclude_logged_in'
wp option delete 'zdac_enable_tracking'
wp option delete 'zdac_consent_cookie_name'
wp option delete 'zdac_consent_source'
wp option delete 'zdac_consent_values'

