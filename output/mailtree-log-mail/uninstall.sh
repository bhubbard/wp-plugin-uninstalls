#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

