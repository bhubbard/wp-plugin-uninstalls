-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_backwpup_s3_destinations', 'advanced_backwpup_s3_destinations_append');

