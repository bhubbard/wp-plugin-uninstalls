-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('masoffer_dl_data', 'masoffer_dl_publisher_id');

