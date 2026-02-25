-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rp4wp', 'rp4wp_do_install', 'rp4wp_install_date', 'rp4wp_hide_nag');

