#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parschat_token'

# Delete Transients
wp transient delete 'parschat_error'
wp transient delete 'parschat_success'

