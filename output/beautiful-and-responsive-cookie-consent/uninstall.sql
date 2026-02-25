-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsc_bar_first_activation', 'nsc_bar_intern_notice_review_later', 'nsc_bar_license_key', 'nsc_bar_capabilityCustom');

