-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jobs_level', '_jobs_sector', '_jobs_hours', '_jobs_headquarters', '_service_icon', '_service_text', '_person_role', '_testimony', '_person_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jobs_level', '_jobs_sector', '_jobs_hours', '_jobs_headquarters', '_service_icon', '_service_text', '_person_role', '_testimony', '_person_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jobs_level', '_jobs_sector', '_jobs_hours', '_jobs_headquarters', '_service_icon', '_service_text', '_person_role', '_testimony', '_person_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jobs_level', '_jobs_sector', '_jobs_hours', '_jobs_headquarters', '_service_icon', '_service_text', '_person_role', '_testimony', '_person_name');

