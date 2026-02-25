-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evfc_pending_comments');
DELETE FROM wp_options WHERE option_name LIKE 'evfc_verified_%';

