-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raio_act_hsf', 'raio_comment_dc', 'raio_bdc_separator', 'raio_insert_header', 'raio_insert_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('raio_insert_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('raio_insert_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('raio_insert_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('raio_insert_header');

