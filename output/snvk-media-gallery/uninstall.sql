-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('snv_mediagallery', 'snv_mediatitle', 'snv_mediaurl');
DELETE FROM wp_usermeta WHERE meta_key IN ('snv_mediagallery', 'snv_mediatitle', 'snv_mediaurl');
DELETE FROM wp_termmeta WHERE meta_key IN ('snv_mediagallery', 'snv_mediatitle', 'snv_mediaurl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('snv_mediagallery', 'snv_mediatitle', 'snv_mediaurl');

