-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yzen_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yzcategory_meta_value', 'yzrating_meta_value', 'yztypearticle_meta_value', 'yztypeplatform_meta_value', 'yzindex_meta_value', 'yzrssenabled_meta_value', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('yzcategory_meta_value', 'yzrating_meta_value', 'yztypearticle_meta_value', 'yztypeplatform_meta_value', 'yzindex_meta_value', 'yzrssenabled_meta_value', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('yzcategory_meta_value', 'yzrating_meta_value', 'yztypearticle_meta_value', 'yztypeplatform_meta_value', 'yzindex_meta_value', 'yzrssenabled_meta_value', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yzcategory_meta_value', 'yzrating_meta_value', 'yztypearticle_meta_value', 'yztypeplatform_meta_value', 'yzindex_meta_value', 'yzrssenabled_meta_value', '_yoast_wpseo_metadesc', '_aioseop_description');

