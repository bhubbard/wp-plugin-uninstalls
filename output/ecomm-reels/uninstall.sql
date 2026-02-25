-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecomm-reels_rate_us', 'ecomm-reels_never_show_notice');

