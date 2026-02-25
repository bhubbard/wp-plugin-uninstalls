#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfcd_installDate'
wp option delete 'sfcd_review_notify'

# Delete Transients
wp transient delete '_sfcd_redirect_welcome'

