-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsm_colorbox_p_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsm_colorbox_data', 'wpsm_colorbox_count', 'Colorbox_Settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsm_colorbox_data', 'wpsm_colorbox_count', 'Colorbox_Settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsm_colorbox_data', 'wpsm_colorbox_count', 'Colorbox_Settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsm_colorbox_data', 'wpsm_colorbox_count', 'Colorbox_Settings');

