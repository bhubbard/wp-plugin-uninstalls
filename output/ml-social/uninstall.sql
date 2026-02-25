-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('traqueamento', 'produto', 'categoria', 'keywords', 'compre_ja', 'mercado_pago', 'min', 'max', 'style');

