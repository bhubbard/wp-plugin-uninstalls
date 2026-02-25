-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aio_fonts', 'rnaio_dont_show_again', 'aio_review_stage', 'aio_license');
DELETE FROM wp_options WHERE option_name LIKE '%_dont_show_again';

