-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getlaw_text_cache', 'getlaw_fetch_text_manually', 'getlaw_imprint_key', 'getlaw_privacy_key', 'getlaw_terms_key', 'getlaw_cancellation_policy_key', 'getlaw_accessibility_statement_key', 'getlaw_imprint_manual_update', 'getlaw_privacy_manual_update', 'getlaw_terms_manual_update', 'getlaw_cancellation_policy_manual_update', 'getlaw_accessibility_statement_manual_update');

