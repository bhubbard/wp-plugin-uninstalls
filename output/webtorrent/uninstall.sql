-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('torrent_link_enabled', 'show_seed_leech_info', 'show_download_info', 'torrents_directory');

