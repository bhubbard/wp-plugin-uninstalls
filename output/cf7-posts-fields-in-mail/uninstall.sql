-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vtd_vtd_cf_posts_fields_general_settings_name', 'active_sitewide_plugins');

