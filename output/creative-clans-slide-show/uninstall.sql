-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_creativeclans_slideshow', 'widget_creativeclans_slideshow_version');

