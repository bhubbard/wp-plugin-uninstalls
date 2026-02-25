-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', '_bp_retain_bp_default', 'template_root', 'stylesheet_root', 'bp_classic_show_notice', 'theme_roots');

