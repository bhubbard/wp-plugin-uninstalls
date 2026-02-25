-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aaa', 'ft_brp_widget_title', 'ft_brp_widget_linked', 'ft_brp_widget_version');

