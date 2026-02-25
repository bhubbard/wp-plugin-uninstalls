-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customer_notes_install_time', 'allow_user_edit', 'allow_order_edit', 'enable_sticky_note', 'customer_notes_review_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_textarea');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_textarea');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_textarea');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_textarea');

