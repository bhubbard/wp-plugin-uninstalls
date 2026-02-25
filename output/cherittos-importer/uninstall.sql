-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cheritto-wordpress-importer-current-job', 'cheritto-wordpress-importer-current-job-path', 'cheritto-wordpress-importer-current-job-stage', 'cheritto-wordpress-importer-attachment-queue-lock', 'cheritto-wordpress-importer-attachment-queue-stage', 'cheritto-wordpress-importer-thumbnails-queue-lock', 'cheritto-wordpress-importer-thumbnails-queue-stage');

