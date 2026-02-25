-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf-rc-activation-date', 'acf-rc-dismiss-review-msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf-rc-uses', 'acf-rc-review-msg-dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf-rc-uses', 'acf-rc-review-msg-dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf-rc-uses', 'acf-rc-review-msg-dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf-rc-uses', 'acf-rc-review-msg-dismissed');

