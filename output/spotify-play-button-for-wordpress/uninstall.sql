-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spotifyplaybutton_size', 'spotifyplaybutton_sizetype', 'spotifyplaybutton_link');

