-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpp_bar', 'wpp_popup', 'wp_promoter_option');

