-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webpro_dde_cif', 'webpro_dde_entity_name', 'webpro_dde_postal_address', 'webpro_dde_phone', 'webpro_dde_email', 'webpro_dde_website', 'webpro_dde_facebook', 'webpro_dde_x', 'webpro_dde_youtube', 'webpro_dde_instagram', 'webpro_dde_linkedin');

