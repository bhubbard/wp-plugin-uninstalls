-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsms_no_of_rows', 'email_footer', 'email_header', 'fsms_currency_symbol', 'fsms_vat', 'fsms_company_address', 'thanks_email', 'from_email_address', 'thanks_email_subject', 'invoice_top_setting', 'invoice_bottom_setting', 'quote_top_setting', 'quote_bottom_setting');

