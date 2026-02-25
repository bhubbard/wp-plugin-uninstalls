-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phonegapDanielRiera_categoriasShow', 'phonegapDanielRiera_token', 'phonegapDanielRiera_opciones', 'phonegapDanielRiera_comentarios', 'phonegapDanielRiera_mostrar_comentarios');

