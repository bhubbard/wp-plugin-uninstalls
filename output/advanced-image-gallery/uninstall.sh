#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zlfms_aig_install_time'
wp option delete 'zlfms_aig_review_status'
wp option delete 'zlfms_aig_review_dismissed_until'

