-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('check_if_xml_invoices_active', 'xml_invoices_validator_key', 'xml_invoices_ubl_emails', 'xml_invoices_supplier_street', 'xml_invoices_supplier_city', 'xml_invoices_supplier_postal', 'xml_invoices_supplier_country', 'xml_invoices_supplier_vat', 'xml_invoices_currency_code', 'xml_invoices_tax_scheme_id', 'xml_invoices_on_order_emails', 'xml_invoices_repo_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

