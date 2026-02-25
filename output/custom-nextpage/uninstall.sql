-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-next-page', 'custom-next-page-previouspagelink', 'custom-next-page-convert', 'custom-next-page-initialization', 'custom-next-page-filter', 'custom-next-page-before-text', 'custom-next-page-after-text', 'custom-next-page-nextpagelink', 'custom-next-page-firstpagelink', 'custom-next-page-lastpagelink');

