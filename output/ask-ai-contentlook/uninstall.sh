#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'askai_option'
wp option delete 'askai_status'
wp option delete 'weglot_settings'

# Delete Transients
wp transient delete 'oauth_nonce'

