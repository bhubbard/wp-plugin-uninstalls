-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('last_natali_sync_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('attribute_pa_natali_size', 'attribute_pa_natali_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('attribute_pa_natali_size', 'attribute_pa_natali_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('attribute_pa_natali_size', 'attribute_pa_natali_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('attribute_pa_natali_size', 'attribute_pa_natali_color');

