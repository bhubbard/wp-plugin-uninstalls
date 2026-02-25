-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advset_guide_shown', 'advset_version', 'advset_version__first_install', 'advanced_settings_settings', 'advset_remove_filters', 'advset_advset', 'advset_code', 'advset_system', 'advset_scripts', 'advset_styles', 'advset_post_types', 'advset_tracked_scripts', 'advset_notice', 'advset_tracked_styles', 'advset_tracksettings_asklater', 'auto_update_plugins', 'powerconfigs', 'adv_post_types', 'advset_tracksettings_choice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'skip_post_thumb', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'skip_post_thumb', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'skip_post_thumb', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'skip_post_thumb', '_wp_attachment_image_alt');

