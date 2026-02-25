-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdvsf_homepage_checks', 'wdvsf_homepage_categories_checks');

