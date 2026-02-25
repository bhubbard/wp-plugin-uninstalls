-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dqcb_settings', 'dqcb_install_date', 'dqcb_review_notice_dismissed_permanently', 'dqcb_review_notice_dismissed_time');

