-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-yadisk-files-default-download-label', 'wp-yadisk-files-root-directory', 'wp-yadisk-files-default-directory', 'wp-yadisk-files-login', 'wp-yadisk-files-pass', 'wp-yadisk-files-transparent-mode', 'yadisk_download_counters');

