-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photo_comp_default_settings', 'photo_comp_email_templates', 'photo_comp_global_settings', 'photo_comp_voting_ui_type', 'settings_errors', 'photo_competition_manager_settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'photo_comp_email_job_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_photo_comp_slug', '_photo_comp_category', '_photo_comp_member');
DELETE FROM wp_usermeta WHERE meta_key IN ('_photo_comp_slug', '_photo_comp_category', '_photo_comp_member');
DELETE FROM wp_termmeta WHERE meta_key IN ('_photo_comp_slug', '_photo_comp_category', '_photo_comp_member');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_photo_comp_slug', '_photo_comp_category', '_photo_comp_member');

