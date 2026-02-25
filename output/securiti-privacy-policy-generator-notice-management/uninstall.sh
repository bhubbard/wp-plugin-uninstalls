#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'securiti_install_date'
wp option delete 'securiti_hide_review_notice'
wp option delete 'securiti_notice_update_date'

