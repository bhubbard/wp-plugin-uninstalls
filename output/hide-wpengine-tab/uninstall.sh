#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hwpet_settings'
wp option delete 'hwpet_lock'
wp option delete 'hwpet_locked_by'
wp option delete 'hwpet_lock_date'
wp option delete 'hwpet_lock_message'

