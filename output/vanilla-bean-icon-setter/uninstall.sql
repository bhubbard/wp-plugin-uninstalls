-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vbean_favicon_metrobgcolour', 'vbean_favicon_iconimage', 'vbean_favicon_iconlandscape', 'vbean_favicon_faviconoverridetheme');

