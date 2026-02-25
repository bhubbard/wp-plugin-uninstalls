-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('posicao', 'codigo', 'onde', 'pagina', 'paginas', 'post', 'posts', 'epagina', 'epaginas', 'epost', 'eposts');
DELETE FROM wp_usermeta WHERE meta_key IN ('posicao', 'codigo', 'onde', 'pagina', 'paginas', 'post', 'posts', 'epagina', 'epaginas', 'epost', 'eposts');
DELETE FROM wp_termmeta WHERE meta_key IN ('posicao', 'codigo', 'onde', 'pagina', 'paginas', 'post', 'posts', 'epagina', 'epaginas', 'epost', 'eposts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('posicao', 'codigo', 'onde', 'pagina', 'paginas', 'post', 'posts', 'epagina', 'epaginas', 'epost', 'eposts');

