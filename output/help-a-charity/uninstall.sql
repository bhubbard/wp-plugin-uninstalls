-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helpc_enable', 'helpc_bar_position', 'helpc_close_color', 'helpc_donation_amount', 'helpc_donated_amount', 'helpc_donation_target', 'helpc_progress_bg', 'helpc_progress', 'helpc_bar_bg_color', 'helpc_bar_color', 'helpc_bar_text', 'helpc_charity_logo');

