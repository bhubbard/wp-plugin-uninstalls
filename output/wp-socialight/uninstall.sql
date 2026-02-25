-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-socialight-facebook', 'wp-socialight-twitter', 'wp-socialight-linkedin', 'wp-socialight-google', 'wp-socialight-buffer', 'wp-socialight-whatsapp', 'wp-socialight-mail', 'wp-socialight-home', 'wp-socialight-pages');

