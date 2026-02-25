-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eewee_twittercard_val_enabled', 'eewee_twittercard_val_method', 'eewee_twittercard_val_site', 'eewee_twittercard_val_creator');

