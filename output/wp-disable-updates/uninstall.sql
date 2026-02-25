-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgwpdup_disable-theme', 'vgwpdup_disable-plugin', 'vgwpdup_disable-wordpress', 'vgwpdup_disable-translation');

