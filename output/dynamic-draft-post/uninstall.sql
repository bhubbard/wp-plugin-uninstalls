-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ddpost_enable_default_post_type', 'ddpost_default_post_type', 'ddpost_enable_notifications', 'ddpost_options');

