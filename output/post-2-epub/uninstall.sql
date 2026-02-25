-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post2epub_campo_directorio', 'post2epub_campo_video', 'post2epub_publisher');

