-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdpr-custom-robots', 'gdpr-use-custom-url', 'gdpr-custom-url', 'gdpr-background-image', 'gdpr_display_mode', 'gdpr_compact_position', 'gdpr_compact_display', 'gdpr_sample_posts', 'orcas-nagger', 'orcas_pro_extension', 'orcas_upgrade_token', 'orcas_installed_single_extension');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('page_type', 'language', 'version', 'gdpr_accepted');
DELETE FROM wp_usermeta WHERE meta_key IN ('page_type', 'language', 'version', 'gdpr_accepted');
DELETE FROM wp_termmeta WHERE meta_key IN ('page_type', 'language', 'version', 'gdpr_accepted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('page_type', 'language', 'version', 'gdpr_accepted');

