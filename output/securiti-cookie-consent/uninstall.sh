#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scc_code'
wp option delete 'scc_notice_update_date'
wp option delete 'scc_hide_review_notice'

