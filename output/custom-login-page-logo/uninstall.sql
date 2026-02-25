-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clpl_settings', 'clpl_activation_time', 'clpl_review_done', 'clpl_review_remind_time');

