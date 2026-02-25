-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('headline_split_impressions', 'use_alt_headline_on_full_post');

