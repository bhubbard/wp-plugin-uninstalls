-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmr_status', 'pmr_type', 'pmr_name', 'pmr_siteurl', 'pmr_logo', 'pmr_facebook', 'pmr_twitter', 'pmr_google', 'pmr_instagram', 'pmr_pinterest', 'pmr_youtube');

