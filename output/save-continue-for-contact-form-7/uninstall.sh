#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwlscf_save_continue_expiry_days'
wp option delete 'dwlscf_draft_cleanup_count'
wp option delete 'dwlscf_last_cleanup_time'

# Clear Cron Jobs
wp cron event delete 'dwlscf_cleanup_expired_drafts'

