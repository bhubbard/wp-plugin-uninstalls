#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'draft_concluder_time'
wp option delete 'draft_concluder_prev_time'
wp option delete 'draft_concluder_when'
wp option delete 'draft_concluder_what'
wp option delete 'draft_concluder_age'
wp option delete 'draft_concluder_since'
wp option delete 'draft_concluder_output'

# Clear Cron Jobs
wp cron event delete 'draft_concluder_mailer'

