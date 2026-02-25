#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clpl_settings'
wp option delete 'clpl_activation_time'
wp option delete 'clpl_review_done'
wp option delete 'clpl_review_remind_time'

