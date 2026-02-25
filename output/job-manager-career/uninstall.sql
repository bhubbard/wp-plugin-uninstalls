-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thjmf_htaccess_hash_key', 'current_theme', 'thjmf_apply_now_submit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thjm_post_custom_settings', 'featured_job', 'experience', 'expired_job', 'thjmf_deactivation_snooze');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thjm_post_custom_settings', 'featured_job', 'experience', 'expired_job', 'thjmf_deactivation_snooze');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thjm_post_custom_settings', 'featured_job', 'experience', 'expired_job', 'thjmf_deactivation_snooze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thjm_post_custom_settings', 'featured_job', 'experience', 'expired_job', 'thjmf_deactivation_snooze');

