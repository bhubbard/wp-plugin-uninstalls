#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'factureazame_apiurl'
wp option delete 'factureazame_apikey'
wp option delete 'factureazame_estimates'
wp option delete 'factureazame_company'
wp option delete 'factureazame_series'
wp option delete 'factureazame_number'
wp option delete 'factureazame_duedays'
wp option delete 'factureazame_cashing'
wp option delete 'factureazame_receipt_series'
wp option delete 'factureazame_op_series'
wp option delete 'factureazame_est-series'
wp option delete 'factureazame_est-number'
wp option delete 'factureazame_sent'

