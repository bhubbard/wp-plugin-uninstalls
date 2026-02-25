#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_settings'
wp option delete 'temp_subs_payment'
wp option delete 'edd_recurring_version'
wp option delete 'novalnet_db_version'
wp option delete 'novalnet_version_update'

