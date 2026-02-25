-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('baseerp_api_environment_endpoint', 'baseerp_debug', 'baseerp_shipping_company_id', 'baseerp_bank_id', 'baseerp_api_key', 'baseerp_webhook_auth_token', 'baseerp_bulk_nf_messages', 'baseerp_notice_transient');

