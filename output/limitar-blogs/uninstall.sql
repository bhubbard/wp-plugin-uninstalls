-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('limitar_blogs_limite', 'limitar_blogs_mensaje_error', 'limitar_blogs_excluir_superadmins');

