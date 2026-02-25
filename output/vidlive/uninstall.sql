-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_vidlive_widgets', 'vidlive_api_key', 'vidlive_embedding', 'vidlive_show_panel');

