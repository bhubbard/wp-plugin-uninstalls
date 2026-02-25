-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_social_links_sidebar', 'SOCIAL_LINKS_DB_VERSION');

