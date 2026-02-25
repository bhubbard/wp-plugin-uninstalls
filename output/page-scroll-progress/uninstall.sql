-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page-scroll-progress-line-color', 'page-scroll-progress-substrates-color', 'page-scroll-progress-position');

