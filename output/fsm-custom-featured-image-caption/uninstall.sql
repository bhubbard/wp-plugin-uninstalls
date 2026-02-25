-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsm_custom_featured_image_caption_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_FSMCFIC_featured_image_nocaption', '_FSMCFIC_featured_image_caption', '_FSMCFIC_featured_image_hide', 'et_nocrop');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_FSMCFIC_featured_image_nocaption', '_FSMCFIC_featured_image_caption', '_FSMCFIC_featured_image_hide', 'et_nocrop');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_FSMCFIC_featured_image_nocaption', '_FSMCFIC_featured_image_caption', '_FSMCFIC_featured_image_hide', 'et_nocrop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_FSMCFIC_featured_image_nocaption', '_FSMCFIC_featured_image_caption', '_FSMCFIC_featured_image_hide', 'et_nocrop');

