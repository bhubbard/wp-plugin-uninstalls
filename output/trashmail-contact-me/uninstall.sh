#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trashmail_options'

# Delete Transients
wp transient delete 'trashmail_session_id'

