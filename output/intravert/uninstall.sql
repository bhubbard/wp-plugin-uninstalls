-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wap_options', 'user_ads_blocks');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

