-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bokio_webhook_secret', 'pekibokio_refresh_token', 'pekibokio_employee_token', 'bokio_employee_token', 'pekibokio_subscription_state', 'pekibokio_has_active_subscription', 'pekibokio_plan', 'pekibokio_next_renewal', 'bokio_last_status', 'pekibokio_connection_id', 'pekibokio_company_slug', 'pekibokio_sync_last', 'wfb_employee_token', 'pekibokio_transfers_used', 'pekibokio_transfers_limit', 'pekibokio_transfers_reset', 'pekibokio_cancel_at_period_end', 'pekibokio_auto_upgrade_enabled', 'pekibokio_company_id', 'bokio_company_slug', 'bokio_used_count', 'bokio_auto_save_invoice_pdf', 'pekibokio_bank_slot_map', 'bokio_shipping_income_account', 'bokio_company_id', 'bokio_status', 'bokio_plan', 'bokio_used_month', 'bokio_refresh_token', 'bokio_force_no_vat', 'bokio_cash_behavior_enabled', 'pekibokio_bank_account_map', 'bokio_gateway_cash_map', 'wfb_company_slug', 'pekibokio_product_id', 'bokio_product_id', 'bokio_status_cache', 'pekibokio_state_throttle', 'pekibokio_last_remote_error');
DELETE FROM wp_options WHERE option_name LIKE 'pekibokio_connect_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bokio_invoice_id', '_bokio_invoice_number', 'bokio_invoice_id', 'bokio_invoice_number', '_bokio_invoice_pdf_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bokio_invoice_id', '_bokio_invoice_number', 'bokio_invoice_id', 'bokio_invoice_number', '_bokio_invoice_pdf_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bokio_invoice_id', '_bokio_invoice_number', 'bokio_invoice_id', 'bokio_invoice_number', '_bokio_invoice_pdf_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bokio_invoice_id', '_bokio_invoice_number', 'bokio_invoice_id', 'bokio_invoice_number', '_bokio_invoice_pdf_id');

