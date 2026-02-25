#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecfa_settings'

# Delete Transients
wp transient delete 'ecfa_adsense_audit_results_v8'
wp transient delete 'ecfa_adsense_audit_timestamp'

