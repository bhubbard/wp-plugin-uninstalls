-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fca_ga', 'fca_ga_show_review_notice', 'fca_ga_show_ga4_notice');

