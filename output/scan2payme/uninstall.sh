#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'scan2payme_option_IBAN'
wp option delete 'scan2payme_option_BIC'
wp option delete 'scan2payme_option_showwhenstatus'
wp option delete 'scan2payme_option_showwhenmethod'
wp option delete 'scan2payme_option_showhook'
wp option delete 'scan2payme_option_PreviewMessage'
wp option delete 'scan2payme_option_PreviewAmount'
wp option delete 'scan2payme_option_Name'
wp option delete 'scan2payme_option_textabove'
wp option delete 'scan2payme_option_textunder'
wp option delete 'scan2payme_option_logo'
wp option delete 'scan2payme_option_account'

