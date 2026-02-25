-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_noi', 'tablet_noi', 'desktop_noi', 'ch_arrows', 'ch_dots', 'font_size', 'carousel_padding', 'top_arrows');

