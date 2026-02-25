-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm-options', 'sm-google-options', 'sm-openstreetmap-options');
DELETE FROM wp_options WHERE option_name LIKE '%-options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sm-address', 'sm-openinghours', 'sm-contactinfo', 'sm-gallery-ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('sm-address', 'sm-openinghours', 'sm-contactinfo', 'sm-gallery-ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('sm-address', 'sm-openinghours', 'sm-contactinfo', 'sm-gallery-ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sm-address', 'sm-openinghours', 'sm-contactinfo', 'sm-gallery-ids');

