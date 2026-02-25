-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iande', 'iande_activation', 'iande_appointments_settings', 'iande_institution');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('groups', 'num_people', 'group_size', 'group_slot', 'exception', 'date_from', 'date_to', '_wp_page_template', 'source', 'collection', 'exhibition', 'tainacan_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('groups', 'num_people', 'group_size', 'group_slot', 'exception', 'date_from', 'date_to', '_wp_page_template', 'source', 'collection', 'exhibition', 'tainacan_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('groups', 'num_people', 'group_size', 'group_slot', 'exception', 'date_from', 'date_to', '_wp_page_template', 'source', 'collection', 'exhibition', 'tainacan_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('groups', 'num_people', 'group_size', 'group_slot', 'exception', 'date_from', 'date_to', '_wp_page_template', 'source', 'collection', 'exhibition', 'tainacan_meta');

