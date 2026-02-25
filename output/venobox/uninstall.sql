-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('venobox_options', 'venobox_activation_date', 'venobox_review_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('venobox_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('venobox_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('venobox_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('venobox_disabled');

