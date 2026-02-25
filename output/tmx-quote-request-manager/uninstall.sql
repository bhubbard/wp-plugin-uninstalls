-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wqrm_poll_interval_seconds', 'wqrm_api_token', 'wqrm_api_base_url', 'wqrm_prefill_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wqrm_prefill_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('wqrm_prefill_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('wqrm_prefill_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wqrm_prefill_request');

