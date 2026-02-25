-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('netvoxlab_ownradio_player_options', 'my_option_name');

