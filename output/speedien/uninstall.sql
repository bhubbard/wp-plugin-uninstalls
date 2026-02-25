-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedien_options', 'speedien_cdnurl', 'speedien_preload_status');

