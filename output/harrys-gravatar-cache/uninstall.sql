-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hgc_db_version', 'gravatar_disable_hovercards', 'widget_authors');

