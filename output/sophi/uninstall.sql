-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sophi_site_automation_access_token');
DELETE FROM wp_options WHERE option_name LIKE 'sophi_content_sync_pending_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sophi_site_automation_last_updated', 'sophi_site_automation_data', '_yoast_wpseo_canonical', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('sophi_site_automation_last_updated', 'sophi_site_automation_data', '_yoast_wpseo_canonical', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('sophi_site_automation_last_updated', 'sophi_site_automation_data', '_yoast_wpseo_canonical', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sophi_site_automation_last_updated', 'sophi_site_automation_data', '_yoast_wpseo_canonical', '_yoast_wpseo_focuskw');

