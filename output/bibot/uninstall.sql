-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bib_site_key', 'bib_secret_key', 'bib_login_check_disable');

