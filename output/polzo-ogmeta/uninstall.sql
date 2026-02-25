-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polzo_ogmeta_thumbnail', 'polzo_ogmeta_type', 'polzo_ogmeta_thumb');

