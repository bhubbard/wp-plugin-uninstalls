-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('versao_tab_anuncio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link_anuncio', 'tipo_anuncio');
DELETE FROM wp_usermeta WHERE meta_key IN ('link_anuncio', 'tipo_anuncio');
DELETE FROM wp_termmeta WHERE meta_key IN ('link_anuncio', 'tipo_anuncio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link_anuncio', 'tipo_anuncio');

