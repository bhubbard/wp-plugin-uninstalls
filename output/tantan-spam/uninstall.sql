-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tantan_spam_filter', 'tantan_spam_filter_recaptcha', 'tantan-spam-count', 'update_plugins');

