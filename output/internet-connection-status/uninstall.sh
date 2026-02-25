#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'internet_connection_status'
wp option delete 'ics_review_notice_dismissed'

