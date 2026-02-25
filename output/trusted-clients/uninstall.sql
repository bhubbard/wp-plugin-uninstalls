-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trusted_clients_total_fotos', 'trusted_clients_mostrar_estrellas', 'trusted_clients_aleatorio', 'trusted_clients_texto', 'trusted_clients_fotos_mostrar', 'trusted_clients_feedback');

