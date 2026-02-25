-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sape_user', 'sape_part_is_client', 'sape_part_is_context', 'sape_part_is_articles', 'sape_login', 'sape_password', 'sape_widget_class', 'sape.get_sites_EXT');

