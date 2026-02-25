#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxycure_tracking_consent'
wp option delete 'voxycure_tracking_consent_declined_at'
wp option delete 'voxyframe_settings'

# Delete Transients
wp transient delete 'voxycure_flush_rewrite'

