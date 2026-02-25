#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpadts_apiMode'
wp option delete 'rpadts_currency'
wp option delete 'rpadts_secretKey_test'
wp option delete 'rpadts_publishKey_test'
wp option delete 'rpadts_secretKey_live'
wp option delete 'rpadts_publishKey_live'
wp option delete 'rpadts_popup_name'
wp option delete 'rpadts_popup_desc'
wp option delete 'stripe_custom_logo'
wp option delete 'rpadts_recurring_payment_check'
wp option delete 'rpadts_email_subject'
wp option delete 'rpadts_email_messagebody'
wp option delete 'rpadts_email_receipt_sender_address'
wp option delete 'rpadts_cc_payment_receipt'

