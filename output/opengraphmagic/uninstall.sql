-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opengraphmagic_service_options', 'opengraphmagic_ttl', 'opengraphmagic_rewrite_rules_flag', 'opengraphmagic_activated', 'opengraphmagic_show_thank_you');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opengraphmagic_image_creation_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('opengraphmagic_image_creation_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('opengraphmagic_image_creation_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opengraphmagic_image_creation_time');

