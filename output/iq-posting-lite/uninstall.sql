-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iq_posting_notice', 'postingiq_settings', 'iq_posting_news');

