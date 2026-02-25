-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fiken_webhook_secret', 'pekifiken_subscription_state', 'pekifiken_employee_token', 'pekifiken_refresh_token', 'pekifiken_connection_id', 'pekifiken_company_slug', 'pekifiken_has_active_subscription', 'pekifiken_sync_last', 'pekifiken_quota_remaining', 'pekifiken_quota_limit', 'pekifiken_quota_used', 'fiken_employee_token', 'wfb_employee_token', 'pekifiken_transfers_used', 'pekifiken_transfers_limit', 'pekifiken_auto_upgrade_enabled', 'pekifiken_transfers_reset', 'pekifiken_plan', 'pekifiken_cancel_at_period_end', 'pekifiken_next_renewal', 'fiken_company_slug', 'wfb_company_slug', 'pekifiken_bank_account_map', 'fiken_gateway_cash_map', 'fiken_used_count', 'fiken_auto_save_invoice_pdf', 'pekifiken_bank_slot_map', 'fiken_shipping_income_account', 'fiken_blocked_non_vat_company', 'fiken_last_status', 'fiken_force_no_vat', 'fiken_cash_behavior_enabled', 'pekifiken_notice_check', 'pekifiken_state_throttle', 'pekifiken_last_remote_error', 'fiken_status_cache');
DELETE FROM wp_options WHERE option_name LIKE 'pekifiken_connect_state_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fiken_invoice_id', '_fiken_invoice_number', 'pekifiken_dismissed_notices', 'fiken_invoice_id', 'fiken_invoice_number', '_fiken_invoice_pdf_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fiken_invoice_id', '_fiken_invoice_number', 'pekifiken_dismissed_notices', 'fiken_invoice_id', 'fiken_invoice_number', '_fiken_invoice_pdf_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fiken_invoice_id', '_fiken_invoice_number', 'pekifiken_dismissed_notices', 'fiken_invoice_id', 'fiken_invoice_number', '_fiken_invoice_pdf_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fiken_invoice_id', '_fiken_invoice_number', 'pekifiken_dismissed_notices', 'fiken_invoice_id', 'fiken_invoice_number', '_fiken_invoice_pdf_id');

