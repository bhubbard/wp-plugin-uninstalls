-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('incrbufo_dismiss_notice', 'incrbufo_first_activate', 'incrbufo_settings', 'incrbufo_version');

