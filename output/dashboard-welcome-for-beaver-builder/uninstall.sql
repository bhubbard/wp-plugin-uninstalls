-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpd_hide_from_subsite', 'bbpd_template', 'bbpd_template_dismissible', 'bbpd_template_site');

