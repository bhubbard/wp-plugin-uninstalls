-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csmm_current_version', 'csmm_last_version', 'csmm_settings', 'csmm_templates', 'csmm_content', 'csmm_social_media', 'csmm_more');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_custom_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_custom_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_custom_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_custom_notice');

