-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpal_db_version', 'tpal_highlighted', 'tpal_displaytype');

