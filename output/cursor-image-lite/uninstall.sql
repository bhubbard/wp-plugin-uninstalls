-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cursimli_activation_time', 'cursimli_options', 'cursimli_support_notice_dismissed');

