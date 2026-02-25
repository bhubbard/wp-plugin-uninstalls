#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgabst_option_text'
wp option delete 'sgabst_option_chk'

# Delete Transients
wp transient delete 'sgabst-admin-notice-activation'

