-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rossyai_category', 'rossyai_ff_redirect_to_settings');

