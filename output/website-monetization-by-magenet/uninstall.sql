-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magenet_links_show_by', 'magenet_links_autoinstall_key', 'magenet_links_last_update');

