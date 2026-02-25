-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagecornr_version', 'pagecornr_ad_url', 'pagecornr_ad_msg');

