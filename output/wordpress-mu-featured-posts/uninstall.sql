-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ra_featured_admin_show', 'ra_featured_admin_keep', 'ra_featured_admin_feed');

