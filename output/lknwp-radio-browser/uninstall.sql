-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lknwp_player_rewrite_rules', 'lknwp_radio_tags');

