-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmh_sitemap_display_options', 'mmh_sitemap_help_options', 'wppb_demo_input_examples');

