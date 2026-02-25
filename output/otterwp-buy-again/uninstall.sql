-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otterwp_buy_again_colors', 'otterwp_buy_again_flush_needed', 'otterwp_buy_again_css_error', 'otterwp_buy_again_css_needs_update');
DELETE FROM wp_options WHERE option_name LIKE 'otterwp_buy_again_categories_%';

