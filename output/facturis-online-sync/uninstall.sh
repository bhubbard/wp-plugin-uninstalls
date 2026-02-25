#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsync_auth_apikey'
wp option delete 'fsync_auth_username'
wp option delete 'fsync_auth_password'
wp option delete 'fsync_auth_fiscalcode'
wp option delete 'fsync_option_autosyncstock'
wp option delete 'fsync_option_autosyncorder'
wp option delete 'fsync_option_filterstock'
wp option delete 'fsync_option_syncordersas'
wp option delete 'fsync_option_proformaserie'
wp option delete 'fsync_option_daysago'
wp option delete 'fsync_option_addproforma'
wp option delete 'fsync_option_addinvoice'
wp option delete 'fsync_option_viewproforma'
wp option delete 'fsync_option_viewinvoice'
wp option delete 'fsync_option_editproforma'
wp option delete 'fsync_option_editinvoice'
wp option delete 'fsync_option_withdiscount'
wp option delete 'fsync_option_proformaserie2'
wp option delete 'fsync_option_invoiceserie'

# Clear Cron Jobs
wp cron event delete 'facturissynccronjob'

