#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdcarnet_updated'
wp option delete 'dest_notes'
wp option delete 'gdcarnet_dest_notes'
wp option delete 'prevalidation'
wp option delete 'gdcarnet_prevalidation'
wp option delete 'gdcarnet_db_updated'
wp option delete 'mensualite_std'
wp option delete 'gdcarnet_dest_entretien'
wp option delete 'gdcarnet_last_auto_exec'
wp option delete 'gdcarnet_last_auto_credit'
wp option delete 'geo_account_enable_multi'

# Clear Cron Jobs
wp cron event delete 'gdcarnet_cotisations_planifiees'

