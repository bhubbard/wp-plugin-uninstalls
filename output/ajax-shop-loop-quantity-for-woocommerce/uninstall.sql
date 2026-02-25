-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ASLQ_INSTALLED', 'ASLQ_VERSION', 'aslq_show_admin_notice');

