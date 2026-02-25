-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cigicigi_post_guest_db_version', 'cigicigi_post_guest_options', 'cigicigi_post_guest_count');

