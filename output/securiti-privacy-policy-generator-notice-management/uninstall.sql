-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('securiti_install_date', 'securiti_hide_review_notice', 'securiti_notice_update_date');

