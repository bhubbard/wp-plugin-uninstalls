-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uf_boarding_finished');
DELETE FROM wp_options WHERE option_name LIKE '%_pending';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('layout', 'style', 'description', 'description_position', 'roles', '_group_fields', 'container_locations', '_uf_hash', 'container_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('layout', 'style', 'description', 'description_position', 'roles', '_group_fields', 'container_locations', '_uf_hash', 'container_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('layout', 'style', 'description', 'description_position', 'roles', '_group_fields', 'container_locations', '_uf_hash', 'container_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('layout', 'style', 'description', 'description_position', 'roles', '_group_fields', 'container_locations', '_uf_hash', 'container_order');

