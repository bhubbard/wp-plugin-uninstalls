-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lgefep_already_rated', 'lgefep_install_date', 'lgefep_initial_save_version', 'lgefep_review_notice_dismiss', 'LGEFEP_VERSION', 'LGEFEP_TYPE');

