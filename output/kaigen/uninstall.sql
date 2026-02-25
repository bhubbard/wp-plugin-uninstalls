-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaigen_provider_api_keys', 'kaigen_provider_models', 'kaigen_quality_settings', 'kaigen_provider', 'kaigen_openai_api_key', 'kaigen_quality_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kaigen_reference_image', '_wp_attachment_image_alt', 'kaigen_generation_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('kaigen_reference_image', '_wp_attachment_image_alt', 'kaigen_generation_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('kaigen_reference_image', '_wp_attachment_image_alt', 'kaigen_generation_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kaigen_reference_image', '_wp_attachment_image_alt', 'kaigen_generation_meta');

