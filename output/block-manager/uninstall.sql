-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gbm_disabled_blocks', 'gbm_categories', 'gbm_disabled_patterns');

