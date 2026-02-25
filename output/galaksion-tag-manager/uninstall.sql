-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glxtm_sidebars', 'glxtm_items', 'glxtm_general', 'glxtm_welcome_shown', 'glxtm_rate_time');

