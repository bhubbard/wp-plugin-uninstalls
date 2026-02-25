-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shm_wizard_step', 'shmapper-by-teplitsa');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('color', 'icon', 'height', 'width', 'shmapper_track_type', 'default_icon_id', 'track', 'form_forms', 'is_legend');
DELETE FROM wp_usermeta WHERE meta_key IN ('color', 'icon', 'height', 'width', 'shmapper_track_type', 'default_icon_id', 'track', 'form_forms', 'is_legend');
DELETE FROM wp_termmeta WHERE meta_key IN ('color', 'icon', 'height', 'width', 'shmapper_track_type', 'default_icon_id', 'track', 'form_forms', 'is_legend');
DELETE FROM wp_commentmeta WHERE meta_key IN ('color', 'icon', 'height', 'width', 'shmapper_track_type', 'default_icon_id', 'track', 'form_forms', 'is_legend');

