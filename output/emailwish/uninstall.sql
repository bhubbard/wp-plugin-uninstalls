-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailwish_secret', 'emailwish_customer_id', 'emailwish_installed');

