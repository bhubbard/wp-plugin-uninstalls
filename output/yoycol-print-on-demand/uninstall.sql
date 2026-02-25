-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yoycol_domain', 'yoycol_salt', 'yoycol_access_key', 'yoycol_access_token', 'yoycol_store_id');

