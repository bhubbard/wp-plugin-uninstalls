-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_by_default_simplify_option', 'better_by_default_performance_option', 'better_by_default_miscellaneous_option', 'better_by_default_personalize_option', 'better_by_default_protect_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'bbd_default_network_template', 'ppp_enabled_preview', 'better_by_default_critical_css', 'better_by_default_last_login_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'bbd_default_network_template', 'ppp_enabled_preview', 'better_by_default_critical_css', 'better_by_default_last_login_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'bbd_default_network_template', 'ppp_enabled_preview', 'better_by_default_critical_css', 'better_by_default_last_login_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'bbd_default_network_template', 'ppp_enabled_preview', 'better_by_default_critical_css', 'better_by_default_last_login_on');

