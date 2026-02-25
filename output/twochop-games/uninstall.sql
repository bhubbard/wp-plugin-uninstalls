-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twochop_public_wpkey', 'twochop_publicpublisherkey', 'twochop_reserved1key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twochop_public_updatekey', 'twochop_public_idtype', 'twochop_public_id', 'twochop_public_customdata', 'twochop_public_buttonstyle', 'twochop_public_updatedatetime', 'twochop_public_dataversion', 'twochop_public_originkey');
DELETE FROM wp_usermeta WHERE meta_key IN ('twochop_public_updatekey', 'twochop_public_idtype', 'twochop_public_id', 'twochop_public_customdata', 'twochop_public_buttonstyle', 'twochop_public_updatedatetime', 'twochop_public_dataversion', 'twochop_public_originkey');
DELETE FROM wp_termmeta WHERE meta_key IN ('twochop_public_updatekey', 'twochop_public_idtype', 'twochop_public_id', 'twochop_public_customdata', 'twochop_public_buttonstyle', 'twochop_public_updatedatetime', 'twochop_public_dataversion', 'twochop_public_originkey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twochop_public_updatekey', 'twochop_public_idtype', 'twochop_public_id', 'twochop_public_customdata', 'twochop_public_buttonstyle', 'twochop_public_updatedatetime', 'twochop_public_dataversion', 'twochop_public_originkey');

