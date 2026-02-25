-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsqmepr_image_processing_progress', 'wpsqmepr_activation_redirect', 'wpsqmepr_cancelled', 'wpsqmepr_image_deletion_error');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

