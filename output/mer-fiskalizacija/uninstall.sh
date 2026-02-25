#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mer25fi_api_username'
wp option delete 'mer25fi_api_password'
wp option delete 'mer25fi_company_oib'
wp option delete 'mer25fi_api_sandbox_active'
wp option delete 'mer25fi_last_invoice_number'
wp option delete 'mer25fi_api_production_url'
wp option delete 'mer25fi_api_sandbox_url'
wp option delete 'mer25fi_company_name'
wp option delete 'mer25fi_company_street_address'
wp option delete 'mer25fi_company_city'
wp option delete 'mer25fi_company_zip'
wp option delete 'mer25fi_company_email'
wp option delete 'mer25fi_company_representative'
wp option delete 'mer25fi_company_legal_form'
wp option delete 'mer25fi_company_in_vat'
wp option delete 'mer25fi_company_iban'
wp option delete 'mer25fi_profile_id'
wp option delete 'mer25fi_company_cash_register_id'
wp option delete 'mer25fi_company_operater_tag'
wp option delete 'mer25fi_company_operater_oib'
wp option delete 'mer25fi_api_software_id'

# Clear Cron Jobs
wp cron event delete 'mer25fi_check_all_invoice_status'

