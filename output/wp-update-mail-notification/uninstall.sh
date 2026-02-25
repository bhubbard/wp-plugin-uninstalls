#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awun-is-active'
wp option delete 'awun-mail'
wp option delete 'awun-mail-headline'
wp option delete 'awun-mail-subtitle'
wp option delete 'awun-small-notice'
wp option delete 'awun-logo'
wp option delete 'awun-mail-color'
wp option delete 'awun-mail-content-header'
wp option delete 'awun-mail-content-footer'
wp option delete 'awun-mail-subject'
wp option delete 'awun-import-text'
wp option delete 'awun-schedule'
wp option delete 'awun-export-text'
wp option delete 'awun-inport-text'
wp option delete 'awun_last_sended'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'awun-scheduled'

