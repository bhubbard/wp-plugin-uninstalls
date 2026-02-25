-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kr_mr_api_token', 'kr_mr_introduction_text', 'kr_mr_latest_membership_request', 'kr_mr_latest_expire_at');

