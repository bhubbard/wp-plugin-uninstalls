-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdb_display_type', 'mdb_facebookappid', 'mdb_link', 'mdb_redirect_url', 'mdb_recipients');

