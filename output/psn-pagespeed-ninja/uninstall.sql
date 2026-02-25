-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagespeedninja_config', 'auto_update_plugins', 'pagespeedninja_dismiss_licensekey_notice', 'pagespeedninja_psi_scores', 'pagespeedninja_activated', 'pagespeedninja_show_tour');

