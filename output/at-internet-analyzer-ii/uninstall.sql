-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xtsd_value', 'xtsite_value', 'xtdmc_value', 'homepage_ergo', 'posts_ergo', 'pages_ergo');

