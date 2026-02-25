-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooProof_api_settings', 'social_proof_wc_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE 'social_proof_stale_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'social_proof_fallback_%';
DELETE FROM wp_options WHERE option_name LIKE 'social_proof_api_%';

