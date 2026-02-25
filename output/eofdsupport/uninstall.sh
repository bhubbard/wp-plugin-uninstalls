#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eofdsupport_username'
wp option delete 'eofdsupport_password'
wp option delete 'eofdsupport_url'
wp option delete 'eofdsupport_kktNumber'
wp option delete 'eofdsupport_multi_kkt'
wp option delete 'eofdsupport_taxationSystem'
wp option delete 'eofdsupport_VATrate'
wp option delete 'eofdsupport_VATrate_delivered'
wp option delete 'eofdsupport_TypeOfMeasurement'
wp option delete 'eofdsupport_buyerAddress'
wp option delete 'eofdsupport_payment_gateways'
wp option delete 'eofdsupport_cashierName'
wp option delete 'eofdsupport_cashierInn'
wp option delete 'eofdsupport_placeMarket'
wp option delete 'eofdsupport_2_receipt'
wp option delete 'eofdsupport_STATUS_income'
wp option delete 'eofdsupport_STATUS_income2'
wp option delete 'eofdsupport_STATUS_refund'
wp option delete 'eofdsupport_signSalesMethod'
wp option delete 'eofdsupport_indTradeItem'
wp option delete 'eofdsupport_db_version'
wp option delete 'eofdsupport_eofdsupport_signSalesMethod'

# Clear Cron Jobs
wp cron event delete 'eofdsupport_my_hourly_event'

