-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfcd_installDate', 'sfcd_review_notify', '_sfcd_redirect_welcome');

