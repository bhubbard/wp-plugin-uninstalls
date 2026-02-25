#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evtb_qr_code_url'

# Delete Transients
wp transient delete 'evtb_event_data'

