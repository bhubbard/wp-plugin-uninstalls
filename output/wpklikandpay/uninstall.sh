#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpklikandpay_store_mainoption'
wp option delete 'wpklikandpay_store_urloption'
wp option delete 'wpklikandpay_db_option'
wp option delete 'storeTpe'
wp option delete 'environnement'

