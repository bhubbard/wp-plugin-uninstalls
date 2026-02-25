-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpp_options', 'upp_transition_notice_counter', 'wppb_free_add_ons_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'description');

