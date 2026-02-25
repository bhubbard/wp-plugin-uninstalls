-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giapi_auto_submissions', 'giapi_requests', 'rank-math-options-instant-indexing', 'giapi_settings', 'giapi_notices', 'rank_math_indexnow_log');

