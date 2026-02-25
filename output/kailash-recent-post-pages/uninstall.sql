-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('krpp_posts_per_page', 'krpp_columns', 'krpp_show_image', 'krpp_show_readmore', 'krpp_readmore_text', 'krpp_auto_display_location', 'krpp_auto_display_margin', 'krpp_auto_display_bgcolor', 'krpp_auto_display_padding');

