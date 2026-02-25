#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'check_if_xml_invoices_active'
wp option delete 'xml_invoices_validator_key'
wp option delete 'xml_invoices_ubl_emails'
wp option delete 'xml_invoices_supplier_street'
wp option delete 'xml_invoices_supplier_city'
wp option delete 'xml_invoices_supplier_postal'
wp option delete 'xml_invoices_supplier_country'
wp option delete 'xml_invoices_supplier_vat'
wp option delete 'xml_invoices_currency_code'
wp option delete 'xml_invoices_tax_scheme_id'
wp option delete 'xml_invoices_on_order_emails'
wp option delete 'xml_invoices_repo_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

