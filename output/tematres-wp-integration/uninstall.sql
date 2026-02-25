-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagina_config_tematres_url', 'tematres_tag_name', 'post_types');

