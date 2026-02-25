-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpiimp_setting', 'WPIIMP_VERSION_NO', 'wpiimp_fb_credentials');

