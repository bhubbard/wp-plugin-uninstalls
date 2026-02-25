-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neroaiic_process_uploads', 'neroaiic_process_themes', 'neroaiic_image_quality', 'neroaiic_api_key');

