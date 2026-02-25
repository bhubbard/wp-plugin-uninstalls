-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sts_dir', 'sts_pause', 'sts_transduration', 'sts_dir_1', 'sts_dir_2', 'sts_dir_3', 'sts_dir_4', 'sts_title', 'sts_title_yes');

