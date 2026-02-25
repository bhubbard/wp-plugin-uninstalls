-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_twitter-title', '_scriptlesssocialsharing_description', '_wp_attachment_image_alt', '_scriptlesssocialsharing_pinterest', '_scriptlesssocialsharing_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_twitter-title', '_scriptlesssocialsharing_description', '_wp_attachment_image_alt', '_scriptlesssocialsharing_pinterest', '_scriptlesssocialsharing_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_twitter-title', '_scriptlesssocialsharing_description', '_wp_attachment_image_alt', '_scriptlesssocialsharing_pinterest', '_scriptlesssocialsharing_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_twitter-title', '_scriptlesssocialsharing_description', '_wp_attachment_image_alt', '_scriptlesssocialsharing_pinterest', '_scriptlesssocialsharing_disable');

