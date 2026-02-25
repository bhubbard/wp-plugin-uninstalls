-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scc_code', 'scc_notice_update_date', 'scc_hide_review_notice');

