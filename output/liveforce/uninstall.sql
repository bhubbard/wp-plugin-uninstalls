-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcfwp_widget_url', 'lcfwp_third_party_url', 'lcfwp_status', 'lcfwp_username', 'lcfwp_password', 'lcfwp_admin_notice');

