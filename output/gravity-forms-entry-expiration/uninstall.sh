#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_entryexpiration_message_displayed'
wp option delete 'gf_entryexpiration_lifetime_processed'

# Clear Cron Jobs
wp cron event delete 'gf_entryexpiration_maybe_expire'
wp cron event delete 'gf_entryexpiration_delete_old_entries'

