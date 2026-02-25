#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsms_no_of_rows'
wp option delete 'email_footer'
wp option delete 'email_header'
wp option delete 'fsms_currency_symbol'
wp option delete 'fsms_vat'
wp option delete 'fsms_company_address'
wp option delete 'thanks_email'
wp option delete 'from_email_address'
wp option delete 'thanks_email_subject'
wp option delete 'invoice_top_setting'
wp option delete 'invoice_bottom_setting'
wp option delete 'quote_top_setting'
wp option delete 'quote_bottom_setting'

