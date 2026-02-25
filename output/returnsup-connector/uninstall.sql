-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('returnsup_needs_webhook_setup', 'returnsup_webhook_ids', 'returnsup_webhook_id', 'returnsup_enable_account_menu', 'woocommerce_tax_based_on', 'woocommerce_default_country', 'returnsup_connection_key', 'returnsup_connection_secret', 'returnsup_consumer_secret', 'wooreturns_setup_step', 'wooreturns_consumer_key', 'wooreturns_api_error', 'wooreturns_request_data', 'wooreturns_request_timestamp', 'wooreturns_request_id', 'woocommerce_wooreturns_free_exchange_settings', 'wooreturns_connection_key', 'returnsup_key_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_returnsup_refund_in_progress', '_returnsup_credit_note_generated', '_returnsup_credit_note_generated_at', '_returnsup_unified', '_returnsup_return_id', 'wooreturns_lang');
DELETE FROM wp_usermeta WHERE meta_key IN ('_returnsup_refund_in_progress', '_returnsup_credit_note_generated', '_returnsup_credit_note_generated_at', '_returnsup_unified', '_returnsup_return_id', 'wooreturns_lang');
DELETE FROM wp_termmeta WHERE meta_key IN ('_returnsup_refund_in_progress', '_returnsup_credit_note_generated', '_returnsup_credit_note_generated_at', '_returnsup_unified', '_returnsup_return_id', 'wooreturns_lang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_returnsup_refund_in_progress', '_returnsup_credit_note_generated', '_returnsup_credit_note_generated_at', '_returnsup_unified', '_returnsup_return_id', 'wooreturns_lang');

