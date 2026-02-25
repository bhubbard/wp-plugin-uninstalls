-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('add_anchor_links_settings', 'aal-admin-notice-activation');

